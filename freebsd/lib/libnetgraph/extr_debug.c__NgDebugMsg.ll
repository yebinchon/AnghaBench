; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libnetgraph/extr_debug.c__NgDebugMsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libnetgraph/extr_debug.c__NgDebugMsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_mesg = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@ARGS_BUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"NG_MESG :\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"  vers   %d\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"  arglen %u\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"  flags  %x\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"  token  %u\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"  cookie %s (%u)\00", align 1
@_gNgDebugLevel = common dso_local global i32 0, align 4
@RECURSIVE_DEBUG_ADJUST = common dso_local global i64 0, align 8
@NGM_GENERIC_COOKIE = common dso_local global i32 0, align 4
@NGM_BINARY2ASCII = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"  cmd    %s (%d)\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"  args   %s\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"  [error decoding message: %s]\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"  cmd    %d\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"  args (%d bytes)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_NgDebugMsg(%struct.ng_mesg* %0, i8* %1) #0 {
  %3 = alloca %struct.ng_mesg*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ng_mesg*, align 8
  %8 = alloca %struct.ng_mesg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ng_mesg* %0, %struct.ng_mesg** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i32, i32* @ARGS_BUFSIZE, align 4
  %12 = sext i32 %11 to i64
  %13 = add i64 64, %12
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = bitcast i32* %15 to %struct.ng_mesg*
  store %struct.ng_mesg* %16, %struct.ng_mesg** %7, align 8
  %17 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %18 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to %struct.ng_mesg*
  store %struct.ng_mesg* %21, %struct.ng_mesg** %8, align 8
  store i32 -1, i32* %10, align 4
  %22 = call i32 (i8*, ...) @NGLOGX(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.ng_mesg*, %struct.ng_mesg** %3, align 8
  %24 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, ...) @NGLOGX(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load %struct.ng_mesg*, %struct.ng_mesg** %3, align 8
  %29 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i8*, ...) @NGLOGX(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = load %struct.ng_mesg*, %struct.ng_mesg** %3, align 8
  %34 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, ...) @NGLOGX(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  %38 = load %struct.ng_mesg*, %struct.ng_mesg** %3, align 8
  %39 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i8*, ...) @NGLOGX(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %41)
  %43 = load %struct.ng_mesg*, %struct.ng_mesg** %3, align 8
  %44 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @NgCookie(i32 %46)
  %48 = load %struct.ng_mesg*, %struct.ng_mesg** %3, align 8
  %49 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, ...) @NGLOGX(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %47, i32 %51)
  %53 = load i32, i32* @_gNgDebugLevel, align 4
  %54 = icmp sle i32 %53, 2
  br i1 %54, label %55, label %56

55:                                               ; preds = %2
  br label %148

56:                                               ; preds = %2
  %57 = load i8*, i8** %4, align 8
  %58 = call i32* @strchr(i8* %57, i8 signext 58)
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %148

61:                                               ; preds = %56
  %62 = call i64 @NgMkSockNode(i32* null, i32* %10, i32* null)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %144

65:                                               ; preds = %61
  %66 = load %struct.ng_mesg*, %struct.ng_mesg** %3, align 8
  %67 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @ARGS_BUFSIZE, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* @ARGS_BUFSIZE, align 4
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %73, %65
  %76 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %77 = load %struct.ng_mesg*, %struct.ng_mesg** %3, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = add i64 32, %79
  %81 = trunc i64 %80 to i32
  %82 = call i32 @memcpy(%struct.ng_mesg* %76, %struct.ng_mesg* %77, i32 %81)
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %85 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  store i32 %83, i32* %86, align 4
  %87 = load i64, i64* @RECURSIVE_DEBUG_ADJUST, align 8
  %88 = load i32, i32* @_gNgDebugLevel, align 4
  %89 = sext i32 %88 to i64
  %90 = sub nsw i64 %89, %87
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* @_gNgDebugLevel, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i8*, i8** %4, align 8
  %94 = load i32, i32* @NGM_GENERIC_COOKIE, align 4
  %95 = load i32, i32* @NGM_BINARY2ASCII, align 4
  %96 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %97 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %98 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = add i64 32, %101
  %103 = trunc i64 %102 to i32
  %104 = call i64 @NgSendMsg(i32 %92, i8* %93, i32 %94, i32 %95, %struct.ng_mesg* %96, i32 %103)
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %75
  %107 = load i64, i64* @RECURSIVE_DEBUG_ADJUST, align 8
  %108 = load i32, i32* @_gNgDebugLevel, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %109, %107
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* @_gNgDebugLevel, align 4
  br label %144

112:                                              ; preds = %75
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.ng_mesg*, %struct.ng_mesg** %7, align 8
  %115 = mul nuw i64 4, %13
  %116 = trunc i64 %115 to i32
  %117 = call i64 @NgRecvMsg(i32 %113, %struct.ng_mesg* %114, i32 %116, i32* null)
  %118 = icmp slt i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %112
  %120 = load i64, i64* @RECURSIVE_DEBUG_ADJUST, align 8
  %121 = load i32, i32* @_gNgDebugLevel, align 4
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %122, %120
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* @_gNgDebugLevel, align 4
  br label %144

125:                                              ; preds = %112
  %126 = load i64, i64* @RECURSIVE_DEBUG_ADJUST, align 8
  %127 = load i32, i32* @_gNgDebugLevel, align 4
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %128, %126
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* @_gNgDebugLevel, align 4
  %131 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %132 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %136 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = call i32 (i8*, ...) @NGLOGX(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %134, i32 %138)
  %140 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %141 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i8*, ...) @NGLOGX(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %142)
  br label %169

144:                                              ; preds = %119, %106, %64
  %145 = load i32, i32* @errno, align 4
  %146 = call i32 @strerror(i32 %145)
  %147 = call i32 (i8*, ...) @NGLOGX(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %144, %60, %55
  %149 = load %struct.ng_mesg*, %struct.ng_mesg** %3, align 8
  %150 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  %153 = call i32 (i8*, ...) @NGLOGX(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %152)
  %154 = load %struct.ng_mesg*, %struct.ng_mesg** %3, align 8
  %155 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 (i8*, ...) @NGLOGX(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %157)
  %159 = load %struct.ng_mesg*, %struct.ng_mesg** %3, align 8
  %160 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = sext i32 %161 to i64
  %163 = inttoptr i64 %162 to i32*
  %164 = load %struct.ng_mesg*, %struct.ng_mesg** %3, align 8
  %165 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @_NgDebugBytes(i32* %163, i32 %167)
  br label %169

169:                                              ; preds = %148, %125
  %170 = load i32, i32* %10, align 4
  %171 = icmp ne i32 %170, -1
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load i32, i32* %10, align 4
  %174 = call i32 @close(i32 %173)
  br label %175

175:                                              ; preds = %172, %169
  %176 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %176)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @NGLOGX(i8*, ...) #2

declare dso_local i32 @NgCookie(i32) #2

declare dso_local i32* @strchr(i8*, i8 signext) #2

declare dso_local i64 @NgMkSockNode(i32*, i32*, i32*) #2

declare dso_local i32 @memcpy(%struct.ng_mesg*, %struct.ng_mesg*, i32) #2

declare dso_local i64 @NgSendMsg(i32, i8*, i32, i32, %struct.ng_mesg*, i32) #2

declare dso_local i64 @NgRecvMsg(i32, %struct.ng_mesg*, i32, i32*) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @_NgDebugBytes(i32*, i32) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
