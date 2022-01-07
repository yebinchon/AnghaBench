; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_class.c_getauclassnam_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_class.c_getauclassnam_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au_class_ent = type { i32 }

@mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.au_class_ent* @getauclassnam_r(%struct.au_class_ent* %0, i8* %1) #0 {
  %3 = alloca %struct.au_class_ent*, align 8
  %4 = alloca %struct.au_class_ent*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.au_class_ent*, align 8
  store %struct.au_class_ent* %0, %struct.au_class_ent** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store %struct.au_class_ent* null, %struct.au_class_ent** %3, align 8
  br label %27

10:                                               ; preds = %2
  %11 = call i32 (...) @setauclass_locked()
  br label %12

12:                                               ; preds = %25, %10
  %13 = load %struct.au_class_ent*, %struct.au_class_ent** %4, align 8
  %14 = call %struct.au_class_ent* @getauclassent_r_locked(%struct.au_class_ent* %13)
  store %struct.au_class_ent* %14, %struct.au_class_ent** %6, align 8
  %15 = icmp ne %struct.au_class_ent* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.au_class_ent*, %struct.au_class_ent** %6, align 8
  %19 = getelementptr inbounds %struct.au_class_ent, %struct.au_class_ent* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @strcmp(i8* %17, i32 %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load %struct.au_class_ent*, %struct.au_class_ent** %6, align 8
  store %struct.au_class_ent* %24, %struct.au_class_ent** %3, align 8
  br label %27

25:                                               ; preds = %16
  br label %12

26:                                               ; preds = %12
  store %struct.au_class_ent* null, %struct.au_class_ent** %3, align 8
  br label %27

27:                                               ; preds = %26, %23, %9
  %28 = load %struct.au_class_ent*, %struct.au_class_ent** %3, align 8
  ret %struct.au_class_ent* %28
}

declare dso_local i32 @setauclass_locked(...) #1

declare dso_local %struct.au_class_ent* @getauclassent_r_locked(%struct.au_class_ent*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
