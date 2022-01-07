; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_trace.c_addrname.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_trace.c_addrname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { [35 x i8] }

@addrname.bufno = internal global i32 0, align 4
@addrname.bufs = internal global [4 x %struct.anon] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"/%d\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c" (mask %#x)\00", align 1
@NUM_BUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @addrname(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @addrname.bufno, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @addrname.bufs, i64 0, i64 %13
  %15 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 0
  %16 = getelementptr inbounds [35 x i8], [35 x i8]* %15, i64 0, i64 0
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @naddr_ntoa(i32 %17)
  %19 = call i32 @strlcpy(i8* %16, i32 %18, i32 35)
  %20 = load i32, i32* @addrname.bufno, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @addrname.bufs, i64 0, i64 %21
  %23 = getelementptr inbounds %struct.anon, %struct.anon* %22, i32 0, i32 0
  %24 = getelementptr inbounds [35 x i8], [35 x i8]* %23, i64 0, i64 0
  store i8* %24, i8** %7, align 8
  store i64 35, i64* %10, align 8
  %25 = load i32, i32* @addrname.bufno, align 4
  %26 = add nsw i32 %25, 1
  %27 = srem i32 %26, 4
  store i32 %27, i32* @addrname.bufno, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %38, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %93

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @std_mask(i32 %35)
  %37 = icmp ne i32 %34, %36
  br i1 %37, label %38, label %93

38:                                               ; preds = %33, %3
  %39 = load i8*, i8** %7, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = call i64 @strlen(i8* %40)
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  store i8* %42, i8** %8, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = sub nsw i32 0, %44
  %46 = and i32 %43, %45
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %47, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %80

51:                                               ; preds = %38
  store i32 0, i32* %11, align 4
  br label %52

52:                                               ; preds = %64, %51
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 32
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i32, i32* %11, align 4
  %57 = shl i32 1, %56
  %58 = load i32, i32* %5, align 4
  %59 = and i32 %57, %58
  %60 = icmp eq i32 %59, 0
  br label %61

61:                                               ; preds = %55, %52
  %62 = phi i1 [ false, %52 ], [ %60, %55 ]
  br i1 %62, label %63, label %67

63:                                               ; preds = %61
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %52

67:                                               ; preds = %61
  %68 = load i8*, i8** %8, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = load i64, i64* %10, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  %72 = load i8*, i8** %8, align 8
  %73 = ptrtoint i8* %71 to i64
  %74 = ptrtoint i8* %72 to i64
  %75 = sub i64 %73, %74
  %76 = trunc i64 %75 to i32
  %77 = load i32, i32* %11, align 4
  %78 = sub nsw i32 32, %77
  %79 = call i32 @snprintf(i8* %68, i32 %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %78)
  br label %92

80:                                               ; preds = %38
  %81 = load i8*, i8** %8, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = load i64, i64* %10, align 8
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  %85 = load i8*, i8** %8, align 8
  %86 = ptrtoint i8* %84 to i64
  %87 = ptrtoint i8* %85 to i64
  %88 = sub i64 %86, %87
  %89 = trunc i64 %88 to i32
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @snprintf(i8* %81, i32 %89, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %80, %67
  br label %93

93:                                               ; preds = %92, %33, %30
  %94 = load i8*, i8** %7, align 8
  ret i8* %94
}

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @naddr_ntoa(i32) #1

declare dso_local i32 @std_mask(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
