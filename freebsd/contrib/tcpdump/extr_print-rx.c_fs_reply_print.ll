; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-rx.c_fs_reply_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-rx.c_fs_reply_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rx_header = type { i64 }

@.str = private unnamed_addr constant [13 x i8] c" fs reply %s\00", align 1
@fs_req = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"op#%d\00", align 1
@RX_PACKET_TYPE_DATA = common dso_local global i64 0, align 8
@AFSOPAQUEMAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c" new\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c" root volume\00", align 1
@AFSNAMEMAX = common dso_local global i32 0, align 4
@RX_PACKET_TYPE_ABORT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c" error %s\00", align 1
@afs_fs_errors = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"#%d\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c" strange fs reply of type %d\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c" [|fs]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32)* @fs_reply_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fs_reply_print(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.rx_header*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp sle i32 %13, 8
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  br label %122

16:                                               ; preds = %4
  %17 = load i32*, i32** %6, align 8
  %18 = bitcast i32* %17 to %struct.rx_header*
  store %struct.rx_header* %18, %struct.rx_header** %10, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* @fs_req, align 4
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = call i32 @tok2str(i32 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %22)
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i32*
  %26 = call i32 @ND_PRINT(i32* %25)
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 8
  store i32* %28, i32** %6, align 8
  %29 = load %struct.rx_header*, %struct.rx_header** %10, align 8
  %30 = getelementptr inbounds %struct.rx_header, %struct.rx_header* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @RX_PACKET_TYPE_DATA, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %86

34:                                               ; preds = %16
  %35 = load i32, i32* %8, align 4
  switch i32 %35, label %84 [
    i32 131, label %36
    i32 137, label %73
    i32 141, label %73
    i32 151, label %77
    i32 153, label %82
  ]

36:                                               ; preds = %34
  %37 = load i32, i32* @AFSOPAQUEMAX, align 4
  %38 = add nsw i32 %37, 1
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %11, align 8
  %41 = alloca i8, i64 %39, align 16
  store i64 %39, i64* %12, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ND_TCHECK2(i32 %44, i32 4)
  %46 = load i32*, i32** %6, align 8
  %47 = call i64 @EXTRACT_32BITS(i32* %46)
  store i64 %47, i64* %9, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  store i32* %49, i32** %6, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %9, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @ND_TCHECK2(i32 %52, i32 %54)
  %56 = load i32, i32* @AFSOPAQUEMAX, align 4
  %57 = load i64, i64* %9, align 8
  %58 = call i64 @min(i32 %56, i64 %57)
  store i64 %58, i64* %9, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = bitcast i32* %59 to i8*
  %61 = load i64, i64* %9, align 8
  %62 = call i32 @strncpy(i8* %41, i8* %60, i64 %61)
  %63 = load i64, i64* %9, align 8
  %64 = getelementptr inbounds i8, i8* %41, i64 %63
  store i8 0, i8* %64, align 1
  %65 = load i32*, i32** %5, align 8
  %66 = bitcast i8* %41 to i32*
  %67 = trunc i64 %39 to i32
  %68 = bitcast i8* %41 to i32*
  %69 = load i64, i64* %9, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = call i32 @acl_print(i32* %65, i32* %66, i32 %67, i32* %70)
  %72 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %72)
  br label %85

73:                                               ; preds = %34, %34
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 @ND_PRINT(i32* bitcast ([5 x i8]* @.str.2 to i32*))
  %76 = call i32 (...) @FIDOUT()
  br label %85

77:                                               ; preds = %34
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @ND_PRINT(i32* bitcast ([13 x i8]* @.str.3 to i32*))
  %80 = load i32, i32* @AFSNAMEMAX, align 4
  %81 = call i32 @STROUT(i32 %80)
  br label %85

82:                                               ; preds = %34
  %83 = call i32 (...) @DATEOUT()
  br label %85

84:                                               ; preds = %34
  br label %85

85:                                               ; preds = %84, %82, %77, %73, %36
  br label %118

86:                                               ; preds = %16
  %87 = load %struct.rx_header*, %struct.rx_header** %10, align 8
  %88 = getelementptr inbounds %struct.rx_header, %struct.rx_header* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @RX_PACKET_TYPE_ABORT, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %110

92:                                               ; preds = %86
  %93 = load i32*, i32** %6, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @ND_TCHECK2(i32 %95, i32 4)
  %97 = load i32*, i32** %6, align 8
  %98 = call i64 @EXTRACT_32BITS(i32* %97)
  %99 = trunc i64 %98 to i32
  %100 = sext i32 %99 to i64
  store i64 %100, i64* %9, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 4
  store i32* %102, i32** %6, align 8
  %103 = load i32*, i32** %5, align 8
  %104 = load i32, i32* @afs_fs_errors, align 4
  %105 = load i64, i64* %9, align 8
  %106 = call i32 @tok2str(i32 %104, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i64 %105)
  %107 = sext i32 %106 to i64
  %108 = inttoptr i64 %107 to i32*
  %109 = call i32 @ND_PRINT(i32* %108)
  br label %117

110:                                              ; preds = %86
  %111 = load i32*, i32** %5, align 8
  %112 = load %struct.rx_header*, %struct.rx_header** %10, align 8
  %113 = getelementptr inbounds %struct.rx_header, %struct.rx_header* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = inttoptr i64 %114 to i32*
  %116 = call i32 @ND_PRINT(i32* %115)
  br label %117

117:                                              ; preds = %110, %92
  br label %118

118:                                              ; preds = %117, %85
  br label %122

119:                                              ; No predecessors!
  %120 = load i32*, i32** %5, align 8
  %121 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str.7 to i32*))
  br label %122

122:                                              ; preds = %119, %118, %15
  ret void
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i64 @EXTRACT_32BITS(i32*) #1

declare dso_local i64 @min(i32, i64) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i32 @acl_print(i32*, i32*, i32, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @FIDOUT(...) #1

declare dso_local i32 @STROUT(i32) #1

declare dso_local i32 @DATEOUT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
