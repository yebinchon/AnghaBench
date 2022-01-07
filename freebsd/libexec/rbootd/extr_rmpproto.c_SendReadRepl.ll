; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rbootd/extr_rmpproto.c_SendReadRepl.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rbootd/extr_rmpproto.c_SendReadRepl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, %struct.rmp_packet }
%struct.rmp_packet = type { i64, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i8*, i32 }
%struct.TYPE_13__ = type { i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"SendReadRepl: no active connection (%s)\00", align 1
@RMP_E_ABORT = common dso_local global i8* null, align 8
@RMP_BOOT_REPL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"SendReadRepl: bad session id (%s)\00", align 1
@RMP_E_BADSID = common dso_local global i8* null, align 8
@RMPREADDATA = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"SendReadRepl: lseek: %m (%s)\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"SendReadRepl: read: %m (%s)\00", align 1
@RMP_E_EOF = common dso_local global i8* null, align 8
@RMP_E_OKAY = common dso_local global i8* null, align 8
@RMP_READ_REPL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SendReadRepl(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.rmp_packet*, align 8
  %7 = alloca %struct.rmp_packet*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = call %struct.TYPE_16__* @FindConn(%struct.TYPE_16__* %10)
  store %struct.TYPE_16__* %11, %struct.TYPE_16__** %5, align 8
  %12 = icmp eq %struct.TYPE_16__* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %15 = call %struct.TYPE_16__* @NewConn(%struct.TYPE_16__* %14)
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %5, align 8
  %16 = icmp eq %struct.TYPE_16__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %183

18:                                               ; preds = %13
  %19 = load i32, i32* @LOG_ERR, align 4
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %21 = call i32 @EnetStr(%struct.TYPE_16__* %20)
  %22 = call i32 @syslog(i32 %19, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %9, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %18, %1
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 2
  store %struct.rmp_packet* %27, %struct.rmp_packet** %7, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 2
  store %struct.rmp_packet* %29, %struct.rmp_packet** %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load i8*, i8** @RMP_E_ABORT, align 8
  %34 = load %struct.rmp_packet*, %struct.rmp_packet** %6, align 8
  %35 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 3
  store i8* %33, i8** %36, align 8
  store i32 1, i32* %4, align 4
  br label %147

37:                                               ; preds = %25
  %38 = load %struct.rmp_packet*, %struct.rmp_packet** %7, align 8
  %39 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @ntohs(i32 %41)
  %43 = load %struct.rmp_packet*, %struct.rmp_packet** %6, align 8
  %44 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @RMP_BOOT_REPL, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %37
  %49 = load %struct.rmp_packet*, %struct.rmp_packet** %6, align 8
  %50 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @ntohs(i32 %52)
  br label %60

54:                                               ; preds = %37
  %55 = load %struct.rmp_packet*, %struct.rmp_packet** %6, align 8
  %56 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @ntohs(i32 %58)
  br label %60

60:                                               ; preds = %54, %48
  %61 = phi i64 [ %53, %48 ], [ %59, %54 ]
  %62 = icmp ne i64 %42, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %60
  %64 = load i32, i32* @LOG_ERR, align 4
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %66 = call i32 @EnetStr(%struct.TYPE_16__* %65)
  %67 = call i32 @syslog(i32 %64, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load i8*, i8** @RMP_E_BADSID, align 8
  %69 = load %struct.rmp_packet*, %struct.rmp_packet** %6, align 8
  %70 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 3
  store i8* %68, i8** %71, align 8
  store i32 1, i32* %4, align 4
  br label %147

72:                                               ; preds = %60
  %73 = load %struct.rmp_packet*, %struct.rmp_packet** %7, align 8
  %74 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @ntohs(i32 %76)
  %78 = load i64, i64* @RMPREADDATA, align 8
  %79 = icmp sgt i64 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %72
  %81 = load i64, i64* @RMPREADDATA, align 8
  %82 = call i32 @htons(i64 %81)
  %83 = load %struct.rmp_packet*, %struct.rmp_packet** %7, align 8
  %84 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 2
  store i32 %82, i32* %85, align 8
  br label %86

86:                                               ; preds = %80, %72
  %87 = load %struct.rmp_packet*, %struct.rmp_packet** %7, align 8
  %88 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @GETWORD(i32 %90, i32 %91)
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @SEEK_SET, align 4
  %98 = call i64 @lseek(i32 %95, i32 %96, i32 %97)
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %86
  %101 = load i32, i32* @LOG_ERR, align 4
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %103 = call i32 @EnetStr(%struct.TYPE_16__* %102)
  %104 = call i32 @syslog(i32 %101, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  %105 = load i8*, i8** @RMP_E_ABORT, align 8
  %106 = load %struct.rmp_packet*, %struct.rmp_packet** %6, align 8
  %107 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 3
  store i8* %105, i8** %108, align 8
  store i32 1, i32* %4, align 4
  br label %147

109:                                              ; preds = %86
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.rmp_packet*, %struct.rmp_packet** %6, align 8
  %114 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 4
  %116 = load %struct.rmp_packet*, %struct.rmp_packet** %7, align 8
  %117 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @ntohs(i32 %119)
  %121 = trunc i64 %120 to i32
  %122 = call i32 @read(i32 %112, i32* %115, i32 %121)
  store i32 %122, i32* %8, align 4
  %123 = icmp sle i32 %122, 0
  br i1 %123, label %124, label %142

124:                                              ; preds = %109
  %125 = load i32, i32* %8, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %124
  %128 = load i32, i32* @LOG_ERR, align 4
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %130 = call i32 @EnetStr(%struct.TYPE_16__* %129)
  %131 = call i32 @syslog(i32 %128, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %130)
  %132 = load i8*, i8** @RMP_E_ABORT, align 8
  %133 = load %struct.rmp_packet*, %struct.rmp_packet** %6, align 8
  %134 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 3
  store i8* %132, i8** %135, align 8
  br label %141

136:                                              ; preds = %124
  %137 = load i8*, i8** @RMP_E_EOF, align 8
  %138 = load %struct.rmp_packet*, %struct.rmp_packet** %6, align 8
  %139 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 3
  store i8* %137, i8** %140, align 8
  br label %141

141:                                              ; preds = %136, %127
  store i32 1, i32* %4, align 4
  br label %147

142:                                              ; preds = %109
  %143 = load i8*, i8** @RMP_E_OKAY, align 8
  %144 = load %struct.rmp_packet*, %struct.rmp_packet** %6, align 8
  %145 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 3
  store i8* %143, i8** %146, align 8
  br label %147

147:                                              ; preds = %142, %141, %100, %63, %32
  %148 = load i32, i32* @RMP_READ_REPL, align 4
  %149 = load %struct.rmp_packet*, %struct.rmp_packet** %6, align 8
  %150 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 2
  store i32 %148, i32* %151, align 8
  %152 = load %struct.rmp_packet*, %struct.rmp_packet** %7, align 8
  %153 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.rmp_packet*, %struct.rmp_packet** %6, align 8
  %157 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @COPYWORD(i32 %155, i32 %159)
  %161 = load %struct.rmp_packet*, %struct.rmp_packet** %7, align 8
  %162 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.rmp_packet*, %struct.rmp_packet** %6, align 8
  %166 = getelementptr inbounds %struct.rmp_packet, %struct.rmp_packet* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 0
  store i32 %164, i32* %167, align 8
  %168 = load i32, i32* %8, align 4
  %169 = call i32 @RMPREADSIZE(i32 %168)
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 8
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %173 = call i32 @SendPacket(%struct.TYPE_16__* %172)
  %174 = load i32, i32* %4, align 4
  %175 = and i32 %174, %173
  store i32 %175, i32* %4, align 4
  %176 = load i32, i32* %9, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %147
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %180 = call i32 @FreeConn(%struct.TYPE_16__* %179)
  br label %181

181:                                              ; preds = %178, %147
  %182 = load i32, i32* %4, align 4
  store i32 %182, i32* %2, align 4
  br label %183

183:                                              ; preds = %181, %17
  %184 = load i32, i32* %2, align 4
  ret i32 %184
}

declare dso_local %struct.TYPE_16__* @FindConn(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @NewConn(%struct.TYPE_16__*) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

declare dso_local i32 @EnetStr(%struct.TYPE_16__*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @GETWORD(i32, i32) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32 @read(i32, i32*, i32) #1

declare dso_local i32 @COPYWORD(i32, i32) #1

declare dso_local i32 @RMPREADSIZE(i32) #1

declare dso_local i32 @SendPacket(%struct.TYPE_16__*) #1

declare dso_local i32 @FreeConn(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
