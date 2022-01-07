; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getpwent.c_compat_endstate.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getpwent.c_compat_endstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compat_state = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*)* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @compat_endstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compat_endstate(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.compat_state*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %45

7:                                                ; preds = %1
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.compat_state*
  store %struct.compat_state* %9, %struct.compat_state** %3, align 8
  %10 = load %struct.compat_state*, %struct.compat_state** %3, align 8
  %11 = getelementptr inbounds %struct.compat_state, %struct.compat_state* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %7
  %15 = load %struct.compat_state*, %struct.compat_state** %3, align 8
  %16 = getelementptr inbounds %struct.compat_state, %struct.compat_state* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %18, align 8
  %20 = load %struct.compat_state*, %struct.compat_state** %3, align 8
  %21 = getelementptr inbounds %struct.compat_state, %struct.compat_state* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = call i32 %19(%struct.TYPE_4__* %22)
  br label %24

24:                                               ; preds = %14, %7
  %25 = load %struct.compat_state*, %struct.compat_state** %3, align 8
  %26 = getelementptr inbounds %struct.compat_state, %struct.compat_state* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = icmp ne %struct.TYPE_3__* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load %struct.compat_state*, %struct.compat_state** %3, align 8
  %31 = getelementptr inbounds %struct.compat_state, %struct.compat_state* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32 (%struct.TYPE_3__*)*, i32 (%struct.TYPE_3__*)** %33, align 8
  %35 = load %struct.compat_state*, %struct.compat_state** %3, align 8
  %36 = getelementptr inbounds %struct.compat_state, %struct.compat_state* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = call i32 %34(%struct.TYPE_3__* %37)
  br label %39

39:                                               ; preds = %29, %24
  %40 = load %struct.compat_state*, %struct.compat_state** %3, align 8
  %41 = getelementptr inbounds %struct.compat_state, %struct.compat_state* %40, i32 0, i32 0
  %42 = call i32 @compat_clear_template(i32* %41)
  %43 = load i8*, i8** %2, align 8
  %44 = call i32 @free(i8* %43)
  br label %45

45:                                               ; preds = %39, %6
  ret void
}

declare dso_local i32 @compat_clear_template(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
