; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-forces.c_pkeyitlv_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-forces.c_pkeyitlv_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.forces_tlv = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"%sKeyinfo: Key 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%s TLV type 0x%x len %d\0A\00", align 1
@ForCES_TLV_err = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.forces_tlv*, i64, i32, i32)* @pkeyitlv_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkeyitlv_print(i32* %0, %struct.forces_tlv* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.forces_tlv*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.forces_tlv*, align 8
  %13 = alloca %struct.forces_tlv*, align 8
  %14 = alloca %struct.forces_tlv*, align 8
  %15 = alloca %struct.forces_tlv*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store %struct.forces_tlv* %1, %struct.forces_tlv** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %21 = load %struct.forces_tlv*, %struct.forces_tlv** %8, align 8
  store %struct.forces_tlv* %21, %struct.forces_tlv** %12, align 8
  %22 = load %struct.forces_tlv*, %struct.forces_tlv** %12, align 8
  %23 = call i64 @TLV_DATA(%struct.forces_tlv* %22)
  %24 = inttoptr i64 %23 to %struct.forces_tlv*
  store %struct.forces_tlv* %24, %struct.forces_tlv** %13, align 8
  %25 = load %struct.forces_tlv*, %struct.forces_tlv** %13, align 8
  %26 = getelementptr inbounds %struct.forces_tlv, %struct.forces_tlv* %25, i64 4
  store %struct.forces_tlv* %26, %struct.forces_tlv** %14, align 8
  %27 = load %struct.forces_tlv*, %struct.forces_tlv** %14, align 8
  store %struct.forces_tlv* %27, %struct.forces_tlv** %15, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i8* @indent_pr(i32 %28, i32 0)
  store i8* %29, i8** %17, align 8
  %30 = load %struct.forces_tlv*, %struct.forces_tlv** %13, align 8
  %31 = bitcast %struct.forces_tlv* %30 to i64*
  %32 = load i64, i64* %31, align 4
  %33 = call i32 @ND_TCHECK(i64 %32)
  %34 = load %struct.forces_tlv*, %struct.forces_tlv** %13, align 8
  %35 = call i32 @EXTRACT_32BITS(%struct.forces_tlv* %34)
  store i32 %35, i32* %16, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = load i8*, i8** %17, align 8
  %38 = load i32, i32* %16, align 4
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i32*
  %41 = call i32 @ND_PRINT(i32* %40)
  %42 = load %struct.forces_tlv*, %struct.forces_tlv** %15, align 8
  %43 = bitcast %struct.forces_tlv* %42 to i64*
  %44 = load i64, i64* %43, align 4
  %45 = call i32 @ND_TCHECK(i64 %44)
  %46 = load %struct.forces_tlv*, %struct.forces_tlv** %15, align 8
  %47 = getelementptr inbounds %struct.forces_tlv, %struct.forces_tlv* %46, i32 0, i32 1
  %48 = call i32 @EXTRACT_16BITS(i32* %47)
  store i32 %48, i32* %18, align 4
  %49 = load %struct.forces_tlv*, %struct.forces_tlv** %15, align 8
  %50 = load i64, i64* %9, align 8
  %51 = call i64 @tlv_valid(%struct.forces_tlv* %49, i64 %50)
  store i64 %51, i64* %20, align 8
  %52 = load i64, i64* %20, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %5
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* @ForCES_TLV_err, align 4
  %57 = load i64, i64* %20, align 8
  %58 = call i32 @tok2str(i32 %56, i32* null, i64 %57)
  %59 = load i32, i32* %18, align 4
  %60 = load %struct.forces_tlv*, %struct.forces_tlv** %15, align 8
  %61 = getelementptr inbounds %struct.forces_tlv, %struct.forces_tlv* %60, i32 0, i32 0
  %62 = call i32 @EXTRACT_16BITS(i32* %61)
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to i32*
  %65 = call i32 @ND_PRINT(i32* %64)
  store i32 -1, i32* %6, align 4
  br label %85

66:                                               ; preds = %5
  %67 = load %struct.forces_tlv*, %struct.forces_tlv** %15, align 8
  %68 = getelementptr inbounds %struct.forces_tlv, %struct.forces_tlv* %67, i32 0, i32 0
  %69 = call i32 @EXTRACT_16BITS(i32* %68)
  store i32 %69, i32* %19, align 4
  %70 = load %struct.forces_tlv*, %struct.forces_tlv** %15, align 8
  %71 = call i64 @TLV_DATA(%struct.forces_tlv* %70)
  %72 = inttoptr i64 %71 to %struct.forces_tlv*
  store %struct.forces_tlv* %72, %struct.forces_tlv** %14, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = load %struct.forces_tlv*, %struct.forces_tlv** %14, align 8
  %75 = load i32, i32* %19, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @fdatatlv_print(i32* %73, %struct.forces_tlv* %74, i32 %75, i32 %76, i32 %77)
  store i32 %78, i32* %6, align 4
  br label %85

79:                                               ; No predecessors!
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* @tstr, align 4
  %82 = sext i32 %81 to i64
  %83 = inttoptr i64 %82 to i32*
  %84 = call i32 @ND_PRINT(i32* %83)
  store i32 -1, i32* %6, align 4
  br label %85

85:                                               ; preds = %79, %66, %54
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local i64 @TLV_DATA(%struct.forces_tlv*) #1

declare dso_local i8* @indent_pr(i32, i32) #1

declare dso_local i32 @ND_TCHECK(i64) #1

declare dso_local i32 @EXTRACT_32BITS(%struct.forces_tlv*) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i64 @tlv_valid(%struct.forces_tlv*, i64) #1

declare dso_local i32 @tok2str(i32, i32*, i64) #1

declare dso_local i32 @fdatatlv_print(i32*, %struct.forces_tlv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
