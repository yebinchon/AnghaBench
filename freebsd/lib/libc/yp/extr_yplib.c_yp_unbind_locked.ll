; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/yp/extr_yplib.c_yp_unbind_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/yp/extr_yplib.c_yp_unbind_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dom_binding = type { %struct.dom_binding*, i32 }

@_ypbindlist = common dso_local global %struct.dom_binding* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @yp_unbind_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yp_unbind_locked(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dom_binding*, align 8
  %4 = alloca %struct.dom_binding*, align 8
  store i8* %0, i8** %2, align 8
  store %struct.dom_binding* null, %struct.dom_binding** %4, align 8
  %5 = load %struct.dom_binding*, %struct.dom_binding** @_ypbindlist, align 8
  store %struct.dom_binding* %5, %struct.dom_binding** %3, align 8
  br label %6

6:                                                ; preds = %36, %1
  %7 = load %struct.dom_binding*, %struct.dom_binding** %3, align 8
  %8 = icmp ne %struct.dom_binding* %7, null
  br i1 %8, label %9, label %40

9:                                                ; preds = %6
  %10 = load i8*, i8** %2, align 8
  %11 = load %struct.dom_binding*, %struct.dom_binding** %3, align 8
  %12 = getelementptr inbounds %struct.dom_binding, %struct.dom_binding* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @strcmp(i8* %10, i32 %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %9
  %17 = load %struct.dom_binding*, %struct.dom_binding** %3, align 8
  %18 = call i32 @_yp_unbind(%struct.dom_binding* %17)
  %19 = load %struct.dom_binding*, %struct.dom_binding** %4, align 8
  %20 = icmp ne %struct.dom_binding* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load %struct.dom_binding*, %struct.dom_binding** %3, align 8
  %23 = getelementptr inbounds %struct.dom_binding, %struct.dom_binding* %22, i32 0, i32 0
  %24 = load %struct.dom_binding*, %struct.dom_binding** %23, align 8
  %25 = load %struct.dom_binding*, %struct.dom_binding** %4, align 8
  %26 = getelementptr inbounds %struct.dom_binding, %struct.dom_binding* %25, i32 0, i32 0
  store %struct.dom_binding* %24, %struct.dom_binding** %26, align 8
  br label %31

27:                                               ; preds = %16
  %28 = load %struct.dom_binding*, %struct.dom_binding** %3, align 8
  %29 = getelementptr inbounds %struct.dom_binding, %struct.dom_binding* %28, i32 0, i32 0
  %30 = load %struct.dom_binding*, %struct.dom_binding** %29, align 8
  store %struct.dom_binding* %30, %struct.dom_binding** @_ypbindlist, align 8
  br label %31

31:                                               ; preds = %27, %21
  %32 = load %struct.dom_binding*, %struct.dom_binding** %3, align 8
  %33 = call i32 @free(%struct.dom_binding* %32)
  br label %41

34:                                               ; preds = %9
  %35 = load %struct.dom_binding*, %struct.dom_binding** %3, align 8
  store %struct.dom_binding* %35, %struct.dom_binding** %4, align 8
  br label %36

36:                                               ; preds = %34
  %37 = load %struct.dom_binding*, %struct.dom_binding** %3, align 8
  %38 = getelementptr inbounds %struct.dom_binding, %struct.dom_binding* %37, i32 0, i32 0
  %39 = load %struct.dom_binding*, %struct.dom_binding** %38, align 8
  store %struct.dom_binding* %39, %struct.dom_binding** %3, align 8
  br label %6

40:                                               ; preds = %6
  br label %41

41:                                               ; preds = %40, %31
  ret void
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @_yp_unbind(%struct.dom_binding*) #1

declare dso_local i32 @free(%struct.dom_binding*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
