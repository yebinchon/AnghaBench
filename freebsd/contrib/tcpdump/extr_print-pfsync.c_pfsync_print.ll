; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pfsync.c_pfsync_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pfsync.c_pfsync_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 (%struct.TYPE_6__*, i32*)*, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.pfsync_header = type { i64, i32 }
%struct.pfsync_subheader = type { i64, i32 }

@.str = private unnamed_addr constant [17 x i8] c"PFSYNCv%d len %d\00", align 1
@PFSYNC_VERSION = common dso_local global i64 0, align 8
@PFSYNC_ACT_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"\0A    act UNKNOWN id %d\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"\0A    %s count %d\00", align 1
@actions = common dso_local global %struct.TYPE_7__* null, align 8
@PFSYNC_ACT_EOF = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"\0A    unimplemented action %hhu\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"\0A    ...\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"\0A    invalid header length\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"\0A    invalid packet length\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.pfsync_header*, i32*, i32)* @pfsync_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pfsync_print(%struct.TYPE_6__* %0, %struct.pfsync_header* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.pfsync_header*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pfsync_subheader*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.pfsync_header* %1, %struct.pfsync_header** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.pfsync_header*, %struct.pfsync_header** %6, align 8
  %15 = getelementptr inbounds %struct.pfsync_header, %struct.pfsync_header* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @ntohs(i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = load %struct.pfsync_header*, %struct.pfsync_header** %6, align 8
  %20 = getelementptr inbounds %struct.pfsync_header, %struct.pfsync_header* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to %struct.TYPE_6__*
  %25 = call i32 @ND_PRINT(%struct.TYPE_6__* %24)
  %26 = load %struct.pfsync_header*, %struct.pfsync_header** %6, align 8
  %27 = getelementptr inbounds %struct.pfsync_header, %struct.pfsync_header* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PFSYNC_VERSION, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  br label %175

32:                                               ; preds = %4
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = sub i64 %34, 16
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %11, align 4
  br label %37

37:                                               ; preds = %156, %32
  %38 = load i32, i32* %11, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %157

40:                                               ; preds = %37
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp ult i64 %42, 16
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %157

45:                                               ; preds = %40
  %46 = load i32*, i32** %7, align 8
  %47 = bitcast i32* %46 to %struct.pfsync_subheader*
  store %struct.pfsync_subheader* %47, %struct.pfsync_subheader** %9, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 16
  store i32* %49, i32** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = sub i64 %51, 16
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = sub i64 %55, 16
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %11, align 4
  %58 = load %struct.pfsync_subheader*, %struct.pfsync_subheader** %9, align 8
  %59 = getelementptr inbounds %struct.pfsync_subheader, %struct.pfsync_subheader* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @PFSYNC_ACT_MAX, align 8
  %62 = icmp uge i64 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %45
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %65 = load %struct.pfsync_subheader*, %struct.pfsync_subheader** %9, align 8
  %66 = getelementptr inbounds %struct.pfsync_subheader, %struct.pfsync_subheader* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to %struct.TYPE_6__*
  %69 = call i32 @ND_PRINT(%struct.TYPE_6__* %68)
  br label %175

70:                                               ; preds = %45
  %71 = load %struct.pfsync_subheader*, %struct.pfsync_subheader** %9, align 8
  %72 = getelementptr inbounds %struct.pfsync_subheader, %struct.pfsync_subheader* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @ntohs(i32 %73)
  store i32 %74, i32* %10, align 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** @actions, align 8
  %77 = load %struct.pfsync_subheader*, %struct.pfsync_subheader** %9, align 8
  %78 = getelementptr inbounds %struct.pfsync_subheader, %struct.pfsync_subheader* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to %struct.TYPE_6__*
  %86 = call i32 @ND_PRINT(%struct.TYPE_6__* %85)
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** @actions, align 8
  %88 = load %struct.pfsync_subheader*, %struct.pfsync_subheader** %9, align 8
  %89 = getelementptr inbounds %struct.pfsync_subheader, %struct.pfsync_subheader* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %13, align 4
  %94 = load %struct.pfsync_subheader*, %struct.pfsync_subheader** %9, align 8
  %95 = getelementptr inbounds %struct.pfsync_subheader, %struct.pfsync_subheader* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @PFSYNC_ACT_EOF, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %70
  br label %175

100:                                              ; preds = %70
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** @actions, align 8
  %102 = load %struct.pfsync_subheader*, %struct.pfsync_subheader** %9, align 8
  %103 = getelementptr inbounds %struct.pfsync_subheader, %struct.pfsync_subheader* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load i32 (%struct.TYPE_6__*, i32*)*, i32 (%struct.TYPE_6__*, i32*)** %106, align 8
  %108 = icmp eq i32 (%struct.TYPE_6__*, i32*)* %107, null
  br i1 %108, label %109, label %116

109:                                              ; preds = %100
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %111 = load %struct.pfsync_subheader*, %struct.pfsync_subheader** %9, align 8
  %112 = getelementptr inbounds %struct.pfsync_subheader, %struct.pfsync_subheader* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = inttoptr i64 %113 to %struct.TYPE_6__*
  %115 = call i32 @ND_PRINT(%struct.TYPE_6__* %114)
  br label %175

116:                                              ; preds = %100
  store i32 0, i32* %12, align 4
  br label %117

117:                                              ; preds = %153, %116
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %156

121:                                              ; preds = %117
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %13, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  store i32 0, i32* %8, align 4
  br label %156

126:                                              ; preds = %121
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %142

131:                                              ; preds = %126
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** @actions, align 8
  %133 = load %struct.pfsync_subheader*, %struct.pfsync_subheader** %9, align 8
  %134 = getelementptr inbounds %struct.pfsync_subheader, %struct.pfsync_subheader* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  %138 = load i32 (%struct.TYPE_6__*, i32*)*, i32 (%struct.TYPE_6__*, i32*)** %137, align 8
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %140 = load i32*, i32** %7, align 8
  %141 = call i32 %138(%struct.TYPE_6__* %139, i32* %140)
  br label %142

142:                                              ; preds = %131, %126
  %143 = load i32, i32* %13, align 4
  %144 = load i32*, i32** %7, align 8
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  store i32* %146, i32** %7, align 8
  %147 = load i32, i32* %13, align 4
  %148 = load i32, i32* %8, align 4
  %149 = sub nsw i32 %148, %147
  store i32 %149, i32* %8, align 4
  %150 = load i32, i32* %13, align 4
  %151 = load i32, i32* %11, align 4
  %152 = sub nsw i32 %151, %150
  store i32 %152, i32* %11, align 4
  br label %153

153:                                              ; preds = %142
  %154 = load i32, i32* %12, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %12, align 4
  br label %117

156:                                              ; preds = %125, %117
  br label %37

157:                                              ; preds = %44, %37
  %158 = load i32, i32* %11, align 4
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %162 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([9 x i8]* @.str.4 to %struct.TYPE_6__*))
  br label %175

163:                                              ; preds = %157
  %164 = load i32, i32* %11, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %168 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([27 x i8]* @.str.5 to %struct.TYPE_6__*))
  br label %175

169:                                              ; preds = %163
  %170 = load i32, i32* %8, align 4
  %171 = icmp sgt i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %174 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([27 x i8]* @.str.6 to %struct.TYPE_6__*))
  br label %175

175:                                              ; preds = %31, %63, %99, %109, %160, %166, %172, %169
  ret void
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
