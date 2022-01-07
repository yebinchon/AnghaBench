; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-isakmp.c_ikev2_sub_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-isakmp.c_ikev2_sub_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isakmp = type { i32 }
%struct.isakmp_gen = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c" [|%s]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.isakmp*, i32, %struct.isakmp_gen*, i32*, i32, i32, i32, i32)* @ikev2_sub_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ikev2_sub_print(i32* %0, %struct.isakmp* %1, i32 %2, %struct.isakmp_gen* %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.isakmp*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.isakmp_gen*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.isakmp_gen, align 4
  store i32* %0, i32** %11, align 8
  store %struct.isakmp* %1, %struct.isakmp** %12, align 8
  store i32 %2, i32* %13, align 4
  store %struct.isakmp_gen* %3, %struct.isakmp_gen** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %23 = load %struct.isakmp_gen*, %struct.isakmp_gen** %14, align 8
  %24 = bitcast %struct.isakmp_gen* %23 to i32*
  store i32* %24, i32** %20, align 8
  br label %25

25:                                               ; preds = %76, %9
  %26 = load i32, i32* %13, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %81

28:                                               ; preds = %25
  %29 = load %struct.isakmp_gen*, %struct.isakmp_gen** %14, align 8
  %30 = bitcast %struct.isakmp_gen* %29 to i64*
  %31 = load i64, i64* %30, align 4
  %32 = call i32 @ND_TCHECK(i64 %31)
  %33 = load %struct.isakmp_gen*, %struct.isakmp_gen** %14, align 8
  %34 = call i32 @UNALIGNED_MEMCPY(%struct.isakmp_gen* %22, %struct.isakmp_gen* %33, i32 8)
  %35 = load %struct.isakmp_gen*, %struct.isakmp_gen** %14, align 8
  %36 = getelementptr inbounds %struct.isakmp_gen, %struct.isakmp_gen* %22, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ntohs(i32 %37)
  %39 = bitcast %struct.isakmp_gen* %35 to i64*
  %40 = load i64, i64* %39, align 4
  %41 = call i32 @ND_TCHECK2(i64 %40, i32 %38)
  %42 = load i32, i32* %19, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %19, align 4
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str to i32*))
  store i32 0, i32* %21, align 4
  br label %46

46:                                               ; preds = %53, %28
  %47 = load i32, i32* %21, align 4
  %48 = load i32, i32* %19, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 @ND_PRINT(i32* bitcast ([5 x i8]* @.str.1 to i32*))
  br label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %21, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %21, align 4
  br label %46

56:                                               ; preds = %46
  %57 = load i32*, i32** %11, align 8
  %58 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.2 to i32*))
  %59 = load i32*, i32** %11, align 8
  %60 = load %struct.isakmp*, %struct.isakmp** %12, align 8
  %61 = load i32, i32* %13, align 4
  %62 = load %struct.isakmp_gen*, %struct.isakmp_gen** %14, align 8
  %63 = load i32*, i32** %15, align 8
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* %18, align 4
  %67 = load i32, i32* %19, align 4
  %68 = call i32* @ikev2_sub0_print(i32* %59, %struct.isakmp* %60, i32 %61, %struct.isakmp_gen* %62, i32* %63, i32 %64, i32 %65, i32 %66, i32 %67)
  store i32* %68, i32** %20, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.3 to i32*))
  %71 = load i32, i32* %19, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %19, align 4
  %73 = load i32*, i32** %20, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %56
  store i32* null, i32** %10, align 8
  br label %90

76:                                               ; preds = %56
  %77 = getelementptr inbounds %struct.isakmp_gen, %struct.isakmp_gen* %22, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %13, align 4
  %79 = load i32*, i32** %20, align 8
  %80 = bitcast i32* %79 to %struct.isakmp_gen*
  store %struct.isakmp_gen* %80, %struct.isakmp_gen** %14, align 8
  br label %25

81:                                               ; preds = %25
  %82 = load i32*, i32** %20, align 8
  store i32* %82, i32** %10, align 8
  br label %90

83:                                               ; No predecessors!
  %84 = load i32*, i32** %11, align 8
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @NPSTR(i32 %85)
  %87 = sext i32 %86 to i64
  %88 = inttoptr i64 %87 to i32*
  %89 = call i32 @ND_PRINT(i32* %88)
  store i32* null, i32** %10, align 8
  br label %90

90:                                               ; preds = %83, %81, %75
  %91 = load i32*, i32** %10, align 8
  ret i32* %91
}

declare dso_local i32 @ND_TCHECK(i64) #1

declare dso_local i32 @UNALIGNED_MEMCPY(%struct.isakmp_gen*, %struct.isakmp_gen*, i32) #1

declare dso_local i32 @ND_TCHECK2(i64, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32* @ikev2_sub0_print(i32*, %struct.isakmp*, i32, %struct.isakmp_gen*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @NPSTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
