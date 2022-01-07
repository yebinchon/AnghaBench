; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-fddi.c_fddi_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-fddi.c_fddi_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 }
%struct.fddi_header = type { i32 }
%struct.ether_header = type { i32 }
%struct.lladdr_info = type { i8*, i64 }

@FDDI_HDRLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"[|fddi]\00", align 1
@etheraddr_string = common dso_local global i8* null, align 8
@FDDIFC_CLFF = common dso_local global i32 0, align 4
@FDDIFC_LLC_ASYNC = common dso_local global i32 0, align 4
@FDDIFC_SMT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fddi_print(%struct.TYPE_7__* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.fddi_header*, align 8
  %11 = alloca %struct.ether_header, align 4
  %12 = alloca %struct.lladdr_info, align 8
  %13 = alloca %struct.lladdr_info, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = bitcast i32* %15 to %struct.fddi_header*
  store %struct.fddi_header* %16, %struct.fddi_header** %10, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* @FDDI_HDRLEN, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([8 x i8]* @.str to %struct.TYPE_7__*))
  %23 = load i64, i64* %9, align 8
  store i64 %23, i64* %5, align 8
  br label %131

24:                                               ; preds = %4
  %25 = load %struct.fddi_header*, %struct.fddi_header** %10, align 8
  %26 = call i64 @ESRC(%struct.ether_header* %11)
  %27 = inttoptr i64 %26 to i8*
  %28 = call i64 @EDST(%struct.ether_header* %11)
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @extract_fddi_addrs(%struct.fddi_header* %25, i8* %27, i8* %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %24
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = load %struct.fddi_header*, %struct.fddi_header** %10, align 8
  %38 = load i64, i64* %8, align 8
  %39 = call i64 @ESRC(%struct.ether_header* %11)
  %40 = call i64 @EDST(%struct.ether_header* %11)
  %41 = call i32 @fddi_hdr_print(%struct.TYPE_7__* %36, %struct.fddi_header* %37, i64 %38, i64 %39, i64 %40)
  br label %42

42:                                               ; preds = %35, %24
  %43 = call i64 @ESRC(%struct.ether_header* %11)
  %44 = getelementptr inbounds %struct.lladdr_info, %struct.lladdr_info* %12, i32 0, i32 1
  store i64 %43, i64* %44, align 8
  %45 = load i8*, i8** @etheraddr_string, align 8
  %46 = getelementptr inbounds %struct.lladdr_info, %struct.lladdr_info* %12, i32 0, i32 0
  store i8* %45, i8** %46, align 8
  %47 = call i64 @EDST(%struct.ether_header* %11)
  %48 = getelementptr inbounds %struct.lladdr_info, %struct.lladdr_info* %13, i32 0, i32 1
  store i64 %47, i64* %48, align 8
  %49 = load i8*, i8** @etheraddr_string, align 8
  %50 = getelementptr inbounds %struct.lladdr_info, %struct.lladdr_info* %13, i32 0, i32 0
  store i8* %49, i8** %50, align 8
  %51 = load i64, i64* @FDDI_HDRLEN, align 8
  %52 = load i64, i64* %8, align 8
  %53 = sub nsw i64 %52, %51
  store i64 %53, i64* %8, align 8
  %54 = load i64, i64* @FDDI_HDRLEN, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 %54
  store i32* %56, i32** %7, align 8
  %57 = load i64, i64* @FDDI_HDRLEN, align 8
  %58 = load i64, i64* %9, align 8
  %59 = sub nsw i64 %58, %57
  store i64 %59, i64* %9, align 8
  %60 = load %struct.fddi_header*, %struct.fddi_header** %10, align 8
  %61 = getelementptr inbounds %struct.fddi_header, %struct.fddi_header* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @FDDIFC_CLFF, align 4
  %64 = and i32 %62, %63
  %65 = load i32, i32* @FDDIFC_LLC_ASYNC, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %88

67:                                               ; preds = %42
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* %9, align 8
  %72 = call i32 @llc_print(%struct.TYPE_7__* %68, i32* %69, i64 %70, i64 %71, %struct.lladdr_info* %12, %struct.lladdr_info* %13)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %67
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %75
  %81 = load i32*, i32** %7, align 8
  %82 = load i64, i64* %9, align 8
  %83 = call i32 @ND_DEFAULTPRINT(i32* %81, i64 %82)
  br label %84

84:                                               ; preds = %80, %75
  %85 = load i32, i32* %14, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %14, align 4
  br label %87

87:                                               ; preds = %84, %67
  br label %126

88:                                               ; preds = %42
  %89 = load %struct.fddi_header*, %struct.fddi_header** %10, align 8
  %90 = getelementptr inbounds %struct.fddi_header, %struct.fddi_header* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @FDDIFC_CLFF, align 4
  %93 = and i32 %91, %92
  %94 = load i32, i32* @FDDIFC_SMT, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %88
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %98 = load i32*, i32** %7, align 8
  %99 = load i64, i64* %9, align 8
  %100 = call i32 @fddi_smt_print(%struct.TYPE_7__* %97, i32* %98, i64 %99)
  store i32 0, i32* %14, align 4
  br label %125

101:                                              ; preds = %88
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %115, label %106

106:                                              ; preds = %101
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %108 = load %struct.fddi_header*, %struct.fddi_header** %10, align 8
  %109 = load i64, i64* %8, align 8
  %110 = load i64, i64* @FDDI_HDRLEN, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i64 @ESRC(%struct.ether_header* %11)
  %113 = call i64 @EDST(%struct.ether_header* %11)
  %114 = call i32 @fddi_hdr_print(%struct.TYPE_7__* %107, %struct.fddi_header* %108, i64 %111, i64 %112, i64 %113)
  br label %115

115:                                              ; preds = %106, %101
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %115
  %121 = load i32*, i32** %7, align 8
  %122 = load i64, i64* %9, align 8
  %123 = call i32 @ND_DEFAULTPRINT(i32* %121, i64 %122)
  br label %124

124:                                              ; preds = %120, %115
  store i32 0, i32* %14, align 4
  br label %125

125:                                              ; preds = %124, %96
  br label %126

126:                                              ; preds = %125, %87
  %127 = load i64, i64* @FDDI_HDRLEN, align 8
  %128 = load i32, i32* %14, align 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %127, %129
  store i64 %130, i64* %5, align 8
  br label %131

131:                                              ; preds = %126, %20
  %132 = load i64, i64* %5, align 8
  ret i64 %132
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_7__*) #1

declare dso_local i32 @extract_fddi_addrs(%struct.fddi_header*, i8*, i8*) #1

declare dso_local i64 @ESRC(%struct.ether_header*) #1

declare dso_local i64 @EDST(%struct.ether_header*) #1

declare dso_local i32 @fddi_hdr_print(%struct.TYPE_7__*, %struct.fddi_header*, i64, i64, i64) #1

declare dso_local i32 @llc_print(%struct.TYPE_7__*, i32*, i64, i64, %struct.lladdr_info*, %struct.lladdr_info*) #1

declare dso_local i32 @ND_DEFAULTPRINT(i32*, i64) #1

declare dso_local i32 @fddi_smt_print(%struct.TYPE_7__*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
