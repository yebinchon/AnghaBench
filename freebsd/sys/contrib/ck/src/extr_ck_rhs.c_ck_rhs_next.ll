; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_rhs.c_ck_rhs_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_rhs.c_ck_rhs_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_rhs = type { i32, %struct.ck_rhs_map* }
%struct.ck_rhs_map = type { i64 }
%struct.ck_rhs_iterator = type { i64 }

@CK_RHS_EMPTY = common dso_local global i8* null, align 8
@CK_RHS_MODE_OBJECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ck_rhs_next(%struct.ck_rhs* %0, %struct.ck_rhs_iterator* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ck_rhs*, align 8
  %6 = alloca %struct.ck_rhs_iterator*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.ck_rhs_map*, align 8
  %9 = alloca i8*, align 8
  store %struct.ck_rhs* %0, %struct.ck_rhs** %5, align 8
  store %struct.ck_rhs_iterator* %1, %struct.ck_rhs_iterator** %6, align 8
  store i8** %2, i8*** %7, align 8
  %10 = load %struct.ck_rhs*, %struct.ck_rhs** %5, align 8
  %11 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %10, i32 0, i32 1
  %12 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %11, align 8
  store %struct.ck_rhs_map* %12, %struct.ck_rhs_map** %8, align 8
  %13 = load %struct.ck_rhs_iterator*, %struct.ck_rhs_iterator** %6, align 8
  %14 = getelementptr inbounds %struct.ck_rhs_iterator, %struct.ck_rhs_iterator* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %8, align 8
  %17 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %50

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %40, %21
  %23 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %8, align 8
  %24 = load %struct.ck_rhs_iterator*, %struct.ck_rhs_iterator** %6, align 8
  %25 = getelementptr inbounds %struct.ck_rhs_iterator, %struct.ck_rhs_iterator* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @ck_rhs_entry(%struct.ck_rhs_map* %23, i64 %26)
  %28 = call i8* @CK_CC_DECONST_PTR(i32 %27)
  store i8* %28, i8** %9, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load i8*, i8** @CK_RHS_EMPTY, align 8
  %31 = icmp ne i8* %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %22
  %33 = load %struct.ck_rhs_iterator*, %struct.ck_rhs_iterator** %6, align 8
  %34 = getelementptr inbounds %struct.ck_rhs_iterator, %struct.ck_rhs_iterator* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %34, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load i8**, i8*** %7, align 8
  store i8* %37, i8** %38, align 8
  store i32 1, i32* %4, align 4
  br label %50

39:                                               ; preds = %22
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.ck_rhs_iterator*, %struct.ck_rhs_iterator** %6, align 8
  %42 = getelementptr inbounds %struct.ck_rhs_iterator, %struct.ck_rhs_iterator* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %42, align 8
  %45 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %8, align 8
  %46 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp slt i64 %44, %47
  br i1 %48, label %22, label %49

49:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %32, %20
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i8* @CK_CC_DECONST_PTR(i32) #1

declare dso_local i32 @ck_rhs_entry(%struct.ck_rhs_map*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
