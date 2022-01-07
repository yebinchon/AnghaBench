; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rbootd/extr_rmpproto.c_SendBootRepl.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rbootd/extr_rmpproto.c_SendBootRepl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmp_packet = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i64, i8, i8*, i8*, i8*, i32, i32 }
%struct.TYPE_10__ = type { i64, i8, i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.rmp_packet }

@RMPBOOTDATA = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s: dropping existing connection\00", align 1
@RMP_BOOT_REPL = common dso_local global i32 0, align 4
@RMP_VERSION = common dso_local global i32 0, align 4
@C_MAXFILE = common dso_local global i64 0, align 8
@RMP_E_NOFILE = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@EMFILE = common dso_local global i64 0, align 8
@ENFILE = common dso_local global i64 0, align 8
@RMP_E_BUSY = common dso_local global i8* null, align 8
@RMP_E_OPENFILE = common dso_local global i8* null, align 8
@RMP_E_OKAY = common dso_local global i8* null, align 8
@LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"%s: request to boot %s (%s)\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"granted\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"denied\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SendBootRepl(%struct.rmp_packet* %0, %struct.TYPE_12__* %1, i8** %2) #0 {
  %4 = alloca %struct.rmp_packet*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.rmp_packet*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store %struct.rmp_packet* %0, %struct.rmp_packet** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i8** %2, i8*** %6, align 8
  %17 = load i32, i32* @RMPBOOTDATA, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %9, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %23 = call %struct.TYPE_12__* @FindConn(%struct.TYPE_12__* %22)
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %11, align 8
  %24 = icmp ne %struct.TYPE_12__* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %3
  %26 = load i32, i32* @LOG_WARNING, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %28 = call i32 @EnetStr(%struct.TYPE_12__* %27)
  %29 = call i32 (i32, i8*, i32, ...) @syslog(i32 %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %31 = call i32 @RemoveConn(%struct.TYPE_12__* %30)
  br label %32

32:                                               ; preds = %25, %3
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 2
  store %struct.rmp_packet* %34, %struct.rmp_packet** %12, align 8
  %35 = load i32, i32* @RMP_BOOT_REPL, align 4
  %36 = load %struct.rmp_packet*, %struct.rmp_packet** %12, align 8
  %37 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 6
  store i32 %35, i32* %38, align 4
  %39 = load %struct.rmp_packet*, %struct.rmp_packet** %4, align 8
  %40 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.rmp_packet*, %struct.rmp_packet** %12, align 8
  %44 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @COPYWORD(i32 %42, i32 %46)
  %48 = call i32 (...) @GenSessID()
  %49 = call i8* @htons(i32 %48)
  %50 = load %struct.rmp_packet*, %struct.rmp_packet** %12, align 8
  %51 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 4
  store i8* %49, i8** %52, align 8
  %53 = load i32, i32* @RMP_VERSION, align 4
  %54 = call i8* @htons(i32 %53)
  %55 = load %struct.rmp_packet*, %struct.rmp_packet** %12, align 8
  %56 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 3
  store i8* %54, i8** %57, align 8
  %58 = load %struct.rmp_packet*, %struct.rmp_packet** %4, align 8
  %59 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.rmp_packet*, %struct.rmp_packet** %12, align 8
  %63 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  store i64 %61, i64* %64, align 8
  %65 = load %struct.rmp_packet*, %struct.rmp_packet** %4, align 8
  %66 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  store i8* %67, i8** %13, align 8
  store i8* %21, i8** %14, align 8
  %68 = load %struct.rmp_packet*, %struct.rmp_packet** %12, align 8
  %69 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  store i8* %70, i8** %15, align 8
  store i64 0, i64* %16, align 8
  br label %71

71:                                               ; preds = %86, %32
  %72 = load i64, i64* %16, align 8
  %73 = load %struct.rmp_packet*, %struct.rmp_packet** %4, align 8
  %74 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ult i64 %72, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %71
  %79 = load i8*, i8** %13, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %13, align 8
  %81 = load i8, i8* %79, align 1
  %82 = load i8*, i8** %15, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %15, align 8
  store i8 %81, i8* %82, align 1
  %84 = load i8*, i8** %14, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %14, align 8
  store i8 %81, i8* %84, align 1
  br label %86

86:                                               ; preds = %78
  %87 = load i64, i64* %16, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %16, align 8
  br label %71

89:                                               ; preds = %71
  %90 = load i8*, i8** %14, align 8
  store i8 0, i8* %90, align 1
  %91 = call i8* @strrchr(i8* %21, i8 signext 47)
  store i8* %91, i8** %8, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i8*, i8** %8, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %8, align 8
  br label %97

96:                                               ; preds = %89
  br label %97

97:                                               ; preds = %96, %93
  %98 = phi i8* [ %95, %93 ], [ %21, %96 ]
  store i8* %98, i8** %8, align 8
  store i64 0, i64* %16, align 8
  br label %99

99:                                               ; preds = %121, %97
  %100 = load i64, i64* %16, align 8
  %101 = load i64, i64* @C_MAXFILE, align 8
  %102 = icmp ult i64 %100, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %99
  %104 = load i8**, i8*** %6, align 8
  %105 = load i64, i64* %16, align 8
  %106 = getelementptr inbounds i8*, i8** %104, i64 %105
  %107 = load i8*, i8** %106, align 8
  %108 = icmp ne i8* %107, null
  br label %109

109:                                              ; preds = %103, %99
  %110 = phi i1 [ false, %99 ], [ %108, %103 ]
  br i1 %110, label %111, label %124

111:                                              ; preds = %109
  %112 = load i8*, i8** %8, align 8
  %113 = load i8**, i8*** %6, align 8
  %114 = load i64, i64* %16, align 8
  %115 = getelementptr inbounds i8*, i8** %113, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = call i64 @STREQN(i8* %112, i8* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  br label %129

120:                                              ; preds = %111
  br label %121

121:                                              ; preds = %120
  %122 = load i64, i64* %16, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %16, align 8
  br label %99

124:                                              ; preds = %109
  %125 = load i8*, i8** @RMP_E_NOFILE, align 8
  %126 = load %struct.rmp_packet*, %struct.rmp_packet** %12, align 8
  %127 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 2
  store i8* %125, i8** %128, align 8
  store i32 0, i32* %7, align 4
  br label %167

129:                                              ; preds = %119
  %130 = load i8*, i8** %8, align 8
  %131 = load i32, i32* @O_RDONLY, align 4
  %132 = call i32 @open(i8* %130, i32 %131, i32 384)
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  %135 = icmp slt i32 %132, 0
  br i1 %135, label %136, label %161

136:                                              ; preds = %129
  %137 = load i64, i64* @errno, align 8
  %138 = load i64, i64* @ENOENT, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %136
  %141 = load i8*, i8** @RMP_E_NOFILE, align 8
  br label %156

142:                                              ; preds = %136
  %143 = load i64, i64* @errno, align 8
  %144 = load i64, i64* @EMFILE, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %150, label %146

146:                                              ; preds = %142
  %147 = load i64, i64* @errno, align 8
  %148 = load i64, i64* @ENFILE, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %146, %142
  %151 = load i8*, i8** @RMP_E_BUSY, align 8
  br label %154

152:                                              ; preds = %146
  %153 = load i8*, i8** @RMP_E_OPENFILE, align 8
  br label %154

154:                                              ; preds = %152, %150
  %155 = phi i8* [ %151, %150 ], [ %153, %152 ]
  br label %156

156:                                              ; preds = %154, %140
  %157 = phi i8* [ %141, %140 ], [ %155, %154 ]
  %158 = load %struct.rmp_packet*, %struct.rmp_packet** %12, align 8
  %159 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 2
  store i8* %157, i8** %160, align 8
  store i32 0, i32* %7, align 4
  br label %166

161:                                              ; preds = %129
  %162 = load i8*, i8** @RMP_E_OKAY, align 8
  %163 = load %struct.rmp_packet*, %struct.rmp_packet** %12, align 8
  %164 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 2
  store i8* %162, i8** %165, align 8
  store i32 1, i32* %7, align 4
  br label %166

166:                                              ; preds = %161, %156
  br label %167

167:                                              ; preds = %166, %124
  %168 = load i32, i32* @LOG_INFO, align 4
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %170 = call i32 @EnetStr(%struct.TYPE_12__* %169)
  %171 = load i8*, i8** %8, align 8
  %172 = load i32, i32* %7, align 4
  %173 = icmp ne i32 %172, 0
  %174 = zext i1 %173 to i64
  %175 = select i1 %173, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %176 = call i32 (i32, i8*, i32, ...) @syslog(i32 %168, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %170, i8* %171, i8* %175)
  %177 = load %struct.rmp_packet*, %struct.rmp_packet** %12, align 8
  %178 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = call i32 @RMPBOOTSIZE(i64 %180)
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  %184 = load i32, i32* %7, align 4
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %186 = call i32 @SendPacket(%struct.TYPE_12__* %185)
  %187 = and i32 %184, %186
  %188 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %188)
  ret i32 %187
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_12__* @FindConn(%struct.TYPE_12__*) #2

declare dso_local i32 @syslog(i32, i8*, i32, ...) #2

declare dso_local i32 @EnetStr(%struct.TYPE_12__*) #2

declare dso_local i32 @RemoveConn(%struct.TYPE_12__*) #2

declare dso_local i32 @COPYWORD(i32, i32) #2

declare dso_local i8* @htons(i32) #2

declare dso_local i32 @GenSessID(...) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i64 @STREQN(i8*, i8*) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @RMPBOOTSIZE(i64) #2

declare dso_local i32 @SendPacket(%struct.TYPE_12__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
