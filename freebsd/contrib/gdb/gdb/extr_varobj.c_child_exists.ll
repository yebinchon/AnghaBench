; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_child_exists.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_child_exists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varobj = type { i32, %struct.varobj_child* }
%struct.varobj_child = type { %struct.varobj*, %struct.varobj_child* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.varobj* (%struct.varobj*, i8*)* @child_exists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.varobj* @child_exists(%struct.varobj* %0, i8* %1) #0 {
  %3 = alloca %struct.varobj*, align 8
  %4 = alloca %struct.varobj*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.varobj_child*, align 8
  store %struct.varobj* %0, %struct.varobj** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.varobj*, %struct.varobj** %4, align 8
  %8 = getelementptr inbounds %struct.varobj, %struct.varobj* %7, i32 0, i32 1
  %9 = load %struct.varobj_child*, %struct.varobj_child** %8, align 8
  store %struct.varobj_child* %9, %struct.varobj_child** %6, align 8
  br label %10

10:                                               ; preds = %27, %2
  %11 = load %struct.varobj_child*, %struct.varobj_child** %6, align 8
  %12 = icmp ne %struct.varobj_child* %11, null
  br i1 %12, label %13, label %31

13:                                               ; preds = %10
  %14 = load %struct.varobj_child*, %struct.varobj_child** %6, align 8
  %15 = getelementptr inbounds %struct.varobj_child, %struct.varobj_child* %14, i32 0, i32 0
  %16 = load %struct.varobj*, %struct.varobj** %15, align 8
  %17 = getelementptr inbounds %struct.varobj, %struct.varobj* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i64 @strcmp(i32 %18, i8* %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %13
  %23 = load %struct.varobj_child*, %struct.varobj_child** %6, align 8
  %24 = getelementptr inbounds %struct.varobj_child, %struct.varobj_child* %23, i32 0, i32 0
  %25 = load %struct.varobj*, %struct.varobj** %24, align 8
  store %struct.varobj* %25, %struct.varobj** %3, align 8
  br label %32

26:                                               ; preds = %13
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.varobj_child*, %struct.varobj_child** %6, align 8
  %29 = getelementptr inbounds %struct.varobj_child, %struct.varobj_child* %28, i32 0, i32 1
  %30 = load %struct.varobj_child*, %struct.varobj_child** %29, align 8
  store %struct.varobj_child* %30, %struct.varobj_child** %6, align 8
  br label %10

31:                                               ; preds = %10
  store %struct.varobj* null, %struct.varobj** %3, align 8
  br label %32

32:                                               ; preds = %31, %22
  %33 = load %struct.varobj*, %struct.varobj** %3, align 8
  ret %struct.varobj* %33
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
