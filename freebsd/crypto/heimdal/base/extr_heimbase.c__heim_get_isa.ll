; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/base/extr_heimbase.c__heim_get_isa.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/base/extr_heimbase.c__heim_get_isa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.heim_base = type { i32 }

@tagged_isa = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"not a supported tagged type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_heim_get_isa(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.heim_base*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @heim_base_is_tagged(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @heim_base_is_tagged_object(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load i32*, i32** @tagged_isa, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @heim_base_tagged_object_tid(i32 %14)
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %2, align 4
  br label %26

18:                                               ; preds = %8
  %19 = call i32 @heim_abort(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %1
  %21 = load i32, i32* %3, align 4
  %22 = call %struct.heim_base* @PTR2BASE(i32 %21)
  store %struct.heim_base* %22, %struct.heim_base** %4, align 8
  %23 = load %struct.heim_base*, %struct.heim_base** %4, align 8
  %24 = getelementptr inbounds %struct.heim_base, %struct.heim_base* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %20, %12
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i64 @heim_base_is_tagged(i32) #1

declare dso_local i64 @heim_base_is_tagged_object(i32) #1

declare dso_local i64 @heim_base_tagged_object_tid(i32) #1

declare dso_local i32 @heim_abort(i8*) #1

declare dso_local %struct.heim_base* @PTR2BASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
