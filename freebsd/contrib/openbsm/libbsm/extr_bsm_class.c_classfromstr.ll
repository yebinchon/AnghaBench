; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_class.c_classfromstr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_class.c_classfromstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au_class_ent = type { i32, i32, i32 }

@classdelim = common dso_local global i32 0, align 4
@AU_CLASS_NAME_MAX = common dso_local global i64 0, align 8
@AU_CLASS_DESC_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.au_class_ent* (i8*, %struct.au_class_ent*)* @classfromstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.au_class_ent* @classfromstr(i8* %0, %struct.au_class_ent* %1) #0 {
  %3 = alloca %struct.au_class_ent*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.au_class_ent*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.au_class_ent* %1, %struct.au_class_ent** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* @classdelim, align 4
  %12 = call i8* @strtok_r(i8* %10, i32 %11, i8** %9)
  store i8* %12, i8** %8, align 8
  %13 = load i32, i32* @classdelim, align 4
  %14 = call i8* @strtok_r(i8* null, i32 %13, i8** %9)
  store i8* %14, i8** %6, align 8
  %15 = load i32, i32* @classdelim, align 4
  %16 = call i8* @strtok_r(i8* null, i32 %15, i8** %9)
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %2
  %20 = load i8*, i8** %6, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i8*, i8** %7, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %19, %2
  store %struct.au_class_ent* null, %struct.au_class_ent** %3, align 8
  br label %56

26:                                               ; preds = %22
  %27 = load i8*, i8** %6, align 8
  %28 = call i64 @strlen(i8* %27)
  %29 = load i64, i64* @AU_CLASS_NAME_MAX, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store %struct.au_class_ent* null, %struct.au_class_ent** %3, align 8
  br label %56

32:                                               ; preds = %26
  %33 = load %struct.au_class_ent*, %struct.au_class_ent** %5, align 8
  %34 = getelementptr inbounds %struct.au_class_ent, %struct.au_class_ent* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* @AU_CLASS_NAME_MAX, align 8
  %38 = call i32 @strlcpy(i32 %35, i8* %36, i64 %37)
  %39 = load i8*, i8** %7, align 8
  %40 = call i64 @strlen(i8* %39)
  %41 = load i64, i64* @AU_CLASS_DESC_MAX, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  store %struct.au_class_ent* null, %struct.au_class_ent** %3, align 8
  br label %56

44:                                               ; preds = %32
  %45 = load %struct.au_class_ent*, %struct.au_class_ent** %5, align 8
  %46 = getelementptr inbounds %struct.au_class_ent, %struct.au_class_ent* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %7, align 8
  %49 = load i64, i64* @AU_CLASS_DESC_MAX, align 8
  %50 = call i32 @strlcpy(i32 %47, i8* %48, i64 %49)
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @strtoul(i8* %51, i8** null, i32 0)
  %53 = load %struct.au_class_ent*, %struct.au_class_ent** %5, align 8
  %54 = getelementptr inbounds %struct.au_class_ent, %struct.au_class_ent* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.au_class_ent*, %struct.au_class_ent** %5, align 8
  store %struct.au_class_ent* %55, %struct.au_class_ent** %3, align 8
  br label %56

56:                                               ; preds = %44, %43, %31, %25
  %57 = load %struct.au_class_ent*, %struct.au_class_ent** %3, align 8
  ret %struct.au_class_ent* %57
}

declare dso_local i8* @strtok_r(i8*, i32, i8**) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strlcpy(i32, i8*, i64) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
