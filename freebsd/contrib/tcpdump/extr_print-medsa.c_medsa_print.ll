; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-medsa.c_medsa_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-medsa.c_medsa_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 }
%struct.lladdr_info = type { i32 }
%struct.medsa_pkthdr = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"MEDSA %d.%d:%d: \00", align 1
@ETHERMTU = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"ethertype %s (0x%04x) \00", align 1
@ethertype_values = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @medsa_print(%struct.TYPE_7__* %0, i32* %1, i32 %2, i32 %3, %struct.lladdr_info* %4, %struct.lladdr_info* %5) #0 {
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.lladdr_info*, align 8
  %12 = alloca %struct.lladdr_info*, align 8
  %13 = alloca %struct.medsa_pkthdr*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.lladdr_info* %4, %struct.lladdr_info** %11, align 8
  store %struct.lladdr_info* %5, %struct.lladdr_info** %12, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = bitcast i32* %15 to %struct.medsa_pkthdr*
  store %struct.medsa_pkthdr* %16, %struct.medsa_pkthdr** %13, align 8
  %17 = load %struct.medsa_pkthdr*, %struct.medsa_pkthdr** %13, align 8
  %18 = getelementptr inbounds %struct.medsa_pkthdr, %struct.medsa_pkthdr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ND_TCHECK(i32 %19)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %6
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %27 = load %struct.medsa_pkthdr*, %struct.medsa_pkthdr** %13, align 8
  %28 = call i32 @SRC_DEV(%struct.medsa_pkthdr* %27)
  %29 = load %struct.medsa_pkthdr*, %struct.medsa_pkthdr** %13, align 8
  %30 = call i32 @SRC_PORT(%struct.medsa_pkthdr* %29)
  %31 = load %struct.medsa_pkthdr*, %struct.medsa_pkthdr** %13, align 8
  %32 = call i32 @VID(%struct.medsa_pkthdr* %31)
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to %struct.TYPE_7__*
  %35 = call i32 @ND_PRINT(%struct.TYPE_7__* %34)
  br label %41

36:                                               ; preds = %6
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %38 = load %struct.medsa_pkthdr*, %struct.medsa_pkthdr** %13, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @medsa_print_full(%struct.TYPE_7__* %37, %struct.medsa_pkthdr* %38, i32 %39)
  br label %41

41:                                               ; preds = %36, %25
  %42 = load i32*, i32** %8, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 8
  store i32* %43, i32** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sub nsw i32 %44, 8
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = sub nsw i32 %46, 8
  store i32 %47, i32* %10, align 4
  %48 = load %struct.medsa_pkthdr*, %struct.medsa_pkthdr** %13, align 8
  %49 = getelementptr inbounds %struct.medsa_pkthdr, %struct.medsa_pkthdr* %48, i32 0, i32 0
  %50 = call i64 @EXTRACT_16BITS(i32* %49)
  store i64 %50, i64* %14, align 8
  %51 = load i64, i64* %14, align 8
  %52 = load i64, i64* @ETHERMTU, align 8
  %53 = icmp sle i64 %51, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %41
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.lladdr_info*, %struct.lladdr_info** %11, align 8
  %60 = load %struct.lladdr_info*, %struct.lladdr_info** %12, align 8
  %61 = call i64 @llc_print(%struct.TYPE_7__* %55, i32* %56, i32 %57, i32 %58, %struct.lladdr_info* %59, %struct.lladdr_info* %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %54
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %63
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @ND_DEFAULTPRINT(i32* %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %63
  br label %73

73:                                               ; preds = %72, %54
  br label %121

74:                                               ; preds = %41
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %81 = load i32, i32* @ethertype_values, align 4
  %82 = load i64, i64* %14, align 8
  %83 = call i32 @tok2str(i32 %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %82)
  %84 = load i64, i64* %14, align 8
  %85 = inttoptr i64 %84 to %struct.TYPE_7__*
  %86 = call i32 @ND_PRINT(%struct.TYPE_7__* %85)
  br label %87

87:                                               ; preds = %79, %74
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %89 = load i64, i64* %14, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.lladdr_info*, %struct.lladdr_info** %11, align 8
  %94 = load %struct.lladdr_info*, %struct.lladdr_info** %12, align 8
  %95 = call i64 @ethertype_print(%struct.TYPE_7__* %88, i64 %89, i32* %90, i32 %91, i32 %92, %struct.lladdr_info* %93, %struct.lladdr_info* %94)
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %120

97:                                               ; preds = %87
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %97
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %104 = load i32, i32* @ethertype_values, align 4
  %105 = load i64, i64* %14, align 8
  %106 = call i32 @tok2str(i32 %104, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %105)
  %107 = load i64, i64* %14, align 8
  %108 = inttoptr i64 %107 to %struct.TYPE_7__*
  %109 = call i32 @ND_PRINT(%struct.TYPE_7__* %108)
  br label %110

110:                                              ; preds = %102, %97
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %110
  %116 = load i32*, i32** %8, align 8
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @ND_DEFAULTPRINT(i32* %116, i32 %117)
  br label %119

119:                                              ; preds = %115, %110
  br label %120

120:                                              ; preds = %119, %87
  br label %121

121:                                              ; preds = %120, %73
  br label %128

122:                                              ; No predecessors!
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %124 = load i32, i32* @tstr, align 4
  %125 = sext i32 %124 to i64
  %126 = inttoptr i64 %125 to %struct.TYPE_7__*
  %127 = call i32 @ND_PRINT(%struct.TYPE_7__* %126)
  br label %128

128:                                              ; preds = %122, %121
  ret void
}

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_7__*) #1

declare dso_local i32 @SRC_DEV(%struct.medsa_pkthdr*) #1

declare dso_local i32 @SRC_PORT(%struct.medsa_pkthdr*) #1

declare dso_local i32 @VID(%struct.medsa_pkthdr*) #1

declare dso_local i32 @medsa_print_full(%struct.TYPE_7__*, %struct.medsa_pkthdr*, i32) #1

declare dso_local i64 @EXTRACT_16BITS(i32*) #1

declare dso_local i64 @llc_print(%struct.TYPE_7__*, i32*, i32, i32, %struct.lladdr_info*, %struct.lladdr_info*) #1

declare dso_local i32 @ND_DEFAULTPRINT(i32*, i32) #1

declare dso_local i32 @tok2str(i32, i8*, i64) #1

declare dso_local i64 @ethertype_print(%struct.TYPE_7__*, i64, i32*, i32, i32, %struct.lladdr_info*, %struct.lladdr_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
