; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_db_interface.c_db_write_bytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_db_interface.c_db_write_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"address %p is invalid\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @db_write_bytes(i32 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = ptrtoint i8* %13 to i32
  %15 = call i64 @db_validate_address(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @db_printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %18)
  store i32 0, i32* %4, align 4
  br label %83

20:                                               ; preds = %3
  %21 = load i64, i64* %6, align 8
  %22 = icmp eq i64 %21, 4
  br i1 %22, label %23, label %38

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, 3
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load i8*, i8** %7, align 8
  %29 = ptrtoint i8* %28 to i64
  %30 = and i64 %29, 3
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load i8*, i8** %7, align 8
  %34 = bitcast i8* %33 to i32*
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %8, align 8
  %37 = bitcast i8* %36 to i32*
  store i32 %35, i32* %37, align 4
  br label %78

38:                                               ; preds = %27, %23, %20
  %39 = load i64, i64* %6, align 8
  %40 = icmp eq i64 %39, 2
  br i1 %40, label %41, label %56

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = load i8*, i8** %7, align 8
  %47 = ptrtoint i8* %46 to i64
  %48 = and i64 %47, 1
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load i8*, i8** %7, align 8
  %52 = bitcast i8* %51 to i16*
  %53 = load i16, i16* %52, align 2
  %54 = load i8*, i8** %8, align 8
  %55 = bitcast i8* %54 to i16*
  store i16 %53, i16* %55, align 2
  br label %77

56:                                               ; preds = %45, %41, %38
  %57 = load i64, i64* %6, align 8
  store i64 %57, i64* %9, align 8
  br label %58

58:                                               ; preds = %70, %56
  %59 = load i64, i64* %9, align 8
  %60 = add i64 %59, -1
  store i64 %60, i64* %9, align 8
  %61 = icmp ugt i64 %59, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %58
  %63 = load i8*, i8** %8, align 8
  %64 = ptrtoint i8* %63 to i32
  %65 = call i64 @db_validate_address(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 @db_printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %68)
  store i32 -1, i32* %4, align 4
  br label %83

70:                                               ; preds = %62
  %71 = load i8*, i8** %7, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %7, align 8
  %73 = load i8, i8* %71, align 1
  %74 = load i8*, i8** %8, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %8, align 8
  store i8 %73, i8* %74, align 1
  br label %58

76:                                               ; preds = %58
  br label %77

77:                                               ; preds = %76, %50
  br label %78

78:                                               ; preds = %77, %32
  %79 = load i32, i32* %5, align 4
  %80 = load i64, i64* %6, align 8
  %81 = call i32 @icache_sync(i32 %79, i64 %80)
  %82 = call i32 (...) @tlb_flush_all()
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %78, %67, %17
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i64 @db_validate_address(i32) #1

declare dso_local i32 @db_printf(i8*, i8*) #1

declare dso_local i32 @icache_sync(i32, i64) #1

declare dso_local i32 @tlb_flush_all(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
