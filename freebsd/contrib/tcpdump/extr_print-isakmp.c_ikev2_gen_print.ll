; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-isakmp.c_ikev2_gen_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-isakmp.c_ikev2_gen_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.isakmp_gen = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c" len=%d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c" [|%s]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*, i32, %struct.isakmp_gen*)* @ikev2_gen_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ikev2_gen_print(%struct.TYPE_6__* %0, i32 %1, %struct.isakmp_gen* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.isakmp_gen*, align 8
  %8 = alloca %struct.isakmp_gen, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.isakmp_gen* %2, %struct.isakmp_gen** %7, align 8
  %9 = load %struct.isakmp_gen*, %struct.isakmp_gen** %7, align 8
  %10 = bitcast %struct.isakmp_gen* %9 to i64*
  %11 = load i64, i64* %10, align 4
  %12 = call i32 @ND_TCHECK(i64 %11)
  %13 = load %struct.isakmp_gen*, %struct.isakmp_gen** %7, align 8
  %14 = call i32 @UNALIGNED_MEMCPY(%struct.isakmp_gen* %8, %struct.isakmp_gen* %13, i32 8)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @NPSTR(i32 %16)
  %18 = getelementptr inbounds %struct.isakmp_gen, %struct.isakmp_gen* %8, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ikev2_pay_print(%struct.TYPE_6__* %15, i32 %17, i32 %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.isakmp_gen, %struct.isakmp_gen* %8, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ntohs(i32 %23)
  %25 = sub nsw i32 %24, 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to %struct.TYPE_6__*
  %28 = call i32 @ND_PRINT(%struct.TYPE_6__* %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 2, %31
  br i1 %32, label %33, label %53

33:                                               ; preds = %3
  %34 = getelementptr inbounds %struct.isakmp_gen, %struct.isakmp_gen* %8, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ntohs(i32 %35)
  %37 = icmp slt i32 4, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %33
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([2 x i8]* @.str.1 to %struct.TYPE_6__*))
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = load %struct.isakmp_gen*, %struct.isakmp_gen** %7, align 8
  %43 = getelementptr inbounds %struct.isakmp_gen, %struct.isakmp_gen* %42, i64 1
  %44 = bitcast %struct.isakmp_gen* %43 to i32*
  %45 = getelementptr inbounds %struct.isakmp_gen, %struct.isakmp_gen* %8, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ntohs(i32 %46)
  %48 = sub nsw i32 %47, 4
  %49 = call i32 @rawprint(%struct.TYPE_6__* %41, i32* %44, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %38
  br label %61

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %52, %33, %3
  %54 = load %struct.isakmp_gen*, %struct.isakmp_gen** %7, align 8
  %55 = bitcast %struct.isakmp_gen* %54 to i32*
  %56 = getelementptr inbounds %struct.isakmp_gen, %struct.isakmp_gen* %8, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ntohs(i32 %57)
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %55, i64 %59
  store i32* %60, i32** %4, align 8
  br label %68

61:                                               ; preds = %51
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @NPSTR(i32 %63)
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to %struct.TYPE_6__*
  %67 = call i32 @ND_PRINT(%struct.TYPE_6__* %66)
  store i32* null, i32** %4, align 8
  br label %68

68:                                               ; preds = %61, %53
  %69 = load i32*, i32** %4, align 8
  ret i32* %69
}

declare dso_local i32 @ND_TCHECK(i64) #1

declare dso_local i32 @UNALIGNED_MEMCPY(%struct.isakmp_gen*, %struct.isakmp_gen*, i32) #1

declare dso_local i32 @ikev2_pay_print(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @NPSTR(i32) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_6__*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @rawprint(%struct.TYPE_6__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
