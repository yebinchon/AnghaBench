; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ipfc.c_ipfc_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ipfc.c_ipfc_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }
%struct.ipfc_header = type { i32 }
%struct.ether_header = type { i32 }
%struct.lladdr_info = type { i8*, i64 }

@IPFC_HDRLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"[|ipfc]\00", align 1
@etheraddr_string = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i32*, i64, i64)* @ipfc_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ipfc_print(%struct.TYPE_6__* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ipfc_header*, align 8
  %11 = alloca %struct.ether_header, align 4
  %12 = alloca %struct.lladdr_info, align 8
  %13 = alloca %struct.lladdr_info, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = bitcast i32* %15 to %struct.ipfc_header*
  store %struct.ipfc_header* %16, %struct.ipfc_header** %10, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* @IPFC_HDRLEN, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([8 x i8]* @.str to %struct.TYPE_6__*))
  %23 = load i64, i64* %9, align 8
  store i64 %23, i64* %5, align 8
  br label %84

24:                                               ; preds = %4
  %25 = load %struct.ipfc_header*, %struct.ipfc_header** %10, align 8
  %26 = call i64 @ESRC(%struct.ether_header* %11)
  %27 = inttoptr i64 %26 to i8*
  %28 = call i64 @EDST(%struct.ether_header* %11)
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @extract_ipfc_addrs(%struct.ipfc_header* %25, i8* %27, i8* %29)
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %24
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = load %struct.ipfc_header*, %struct.ipfc_header** %10, align 8
  %38 = load i64, i64* %8, align 8
  %39 = call i64 @ESRC(%struct.ether_header* %11)
  %40 = call i64 @EDST(%struct.ether_header* %11)
  %41 = call i32 @ipfc_hdr_print(%struct.TYPE_6__* %36, %struct.ipfc_header* %37, i64 %38, i64 %39, i64 %40)
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
  %51 = load i64, i64* @IPFC_HDRLEN, align 8
  %52 = load i64, i64* %8, align 8
  %53 = sub nsw i64 %52, %51
  store i64 %53, i64* %8, align 8
  %54 = load i64, i64* @IPFC_HDRLEN, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 %54
  store i32* %56, i32** %7, align 8
  %57 = load i64, i64* @IPFC_HDRLEN, align 8
  %58 = load i64, i64* %9, align 8
  %59 = sub nsw i64 %58, %57
  store i64 %59, i64* %9, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* %9, align 8
  %64 = call i32 @llc_print(%struct.TYPE_6__* %60, i32* %61, i64 %62, i64 %63, %struct.lladdr_info* %12, %struct.lladdr_info* %13)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %42
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %67
  %73 = load i32*, i32** %7, align 8
  %74 = load i64, i64* %9, align 8
  %75 = call i32 @ND_DEFAULTPRINT(i32* %73, i64 %74)
  br label %76

76:                                               ; preds = %72, %67
  %77 = load i32, i32* %14, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %14, align 4
  br label %79

79:                                               ; preds = %76, %42
  %80 = load i64, i64* @IPFC_HDRLEN, align 8
  %81 = load i32, i32* %14, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %80, %82
  store i64 %83, i64* %5, align 8
  br label %84

84:                                               ; preds = %79, %20
  %85 = load i64, i64* %5, align 8
  ret i64 %85
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_6__*) #1

declare dso_local i32 @extract_ipfc_addrs(%struct.ipfc_header*, i8*, i8*) #1

declare dso_local i64 @ESRC(%struct.ether_header*) #1

declare dso_local i64 @EDST(%struct.ether_header*) #1

declare dso_local i32 @ipfc_hdr_print(%struct.TYPE_6__*, %struct.ipfc_header*, i64, i64, i64) #1

declare dso_local i32 @llc_print(%struct.TYPE_6__*, i32*, i64, i64, %struct.lladdr_info*, %struct.lladdr_info*) #1

declare dso_local i32 @ND_DEFAULTPRINT(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
