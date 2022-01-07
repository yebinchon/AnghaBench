; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-sds.c_getmessage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-sds.c_getmessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@watchdog = common dso_local global i64 0, align 8
@sds_timeout = common dso_local global i32 0, align 4
@SERIAL_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Watchdog has expired.  Target detached.\0A\00", align 1
@remote_debug = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"Timed out.\0A\00", align 1
@gdb_stdlog = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Trigraph %c%c%c received\0A\00", align 1
@message_pending = common dso_local global i32 0, align 4
@gdb_stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"Checksum mismatch: computed %d, received %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Requesting resend...\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"... (Got checksum %d, id %d, length %d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Message received: \22\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"Ignoring packet error, continuing...\0A\00", align 1
@MAX_TRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @getmessage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getmessage(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [3 x i8], align 1
  %16 = alloca [500 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @strcpy(i8* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %2
  %22 = load i64, i64* @watchdog, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i64, i64* @watchdog, align 8
  br label %27

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i64 [ %25, %24 ], [ -1, %26 ]
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %10, align 4
  br label %32

30:                                               ; preds = %2
  %31 = load i32, i32* @sds_timeout, align 4
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %30, %27
  store i32 1, i32* %9, align 4
  br label %33

33:                                               ; preds = %173, %32
  %34 = load i32, i32* %9, align 4
  %35 = icmp sle i32 %34, 3
  br i1 %35, label %36, label %176

36:                                               ; preds = %33
  br label %37

37:                                               ; preds = %63, %36
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @readchar(i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @SERIAL_TIMEOUT, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %37
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = call i32 (...) @target_mourn_inferior()
  %48 = call i32 @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i64, i64* @remote_debug, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* @gdb_stdlog, align 4
  %54 = call i32 @fputs_filtered(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %52, %49
  br label %172

56:                                               ; preds = %37
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 36
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 123
  br label %63

63:                                               ; preds = %60, %57
  %64 = phi i1 [ false, %57 ], [ %62, %60 ]
  br i1 %64, label %37, label %65

65:                                               ; preds = %63
  %66 = load i32, i32* %6, align 4
  %67 = icmp eq i32 %66, 123
  br i1 %67, label %68, label %86

68:                                               ; preds = %65
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @readchar(i32 %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @readchar(i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i64, i64* @remote_debug, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = load i32, i32* @gdb_stdlog, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %76, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %75, %68
  %82 = load i32, i32* %8, align 4
  %83 = icmp eq i32 %82, 43
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i32 1, i32* @message_pending, align 4
  store i32 0, i32* %3, align 4
  br label %178

85:                                               ; preds = %81
  br label %173

86:                                               ; preds = %65
  %87 = getelementptr inbounds [500 x i8], [500 x i8]* %16, i64 0, i64 0
  %88 = call i32 @read_frame(i8* %87)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %171

91:                                               ; preds = %86
  %92 = getelementptr inbounds [500 x i8], [500 x i8]* %16, i64 0, i64 0
  %93 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 0
  %94 = call i32 @fromb64(i8* %92, i8* %93, i32 4)
  %95 = getelementptr inbounds [500 x i8], [500 x i8]* %16, i64 0, i64 0
  %96 = getelementptr inbounds i8, i8* %95, i64 4
  %97 = load i8*, i8** %4, align 8
  %98 = getelementptr inbounds [500 x i8], [500 x i8]* %16, i64 0, i64 0
  %99 = call i32 @strlen(i8* %98)
  %100 = sub nsw i32 %99, 4
  %101 = call i32 @fromb64(i8* %96, i8* %97, i32 %100)
  %102 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 2
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  store i32 %104, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %105 = load i32, i32* %14, align 4
  %106 = load i8*, i8** %4, align 8
  %107 = load i32, i32* %13, align 4
  %108 = call i32 @compute_checksum(i32 %105, i8* %106, i32 %107)
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %14, align 4
  %110 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 0
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  %112 = call i32 @compute_checksum(i32 %109, i8* %111, i32 2)
  store i32 %112, i32* %14, align 4
  %113 = load i32, i32* %14, align 4
  %114 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 0
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = icmp ne i32 %113, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %91
  %119 = load i32, i32* @gdb_stderr, align 4
  %120 = load i32, i32* %14, align 4
  %121 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 0
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %119, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %120, i32 %123)
  br label %125

125:                                              ; preds = %118, %91
  %126 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 2
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = icmp eq i32 %128, 255
  br i1 %129, label %130, label %133

130:                                              ; preds = %125
  %131 = load i32, i32* @gdb_stderr, align 4
  %132 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %131, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %133

133:                                              ; preds = %130, %125
  %134 = load i64, i64* @remote_debug, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %169

136:                                              ; preds = %133
  %137 = load i32, i32* @gdb_stdlog, align 4
  %138 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 0
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 1
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = getelementptr inbounds [3 x i8], [3 x i8]* %15, i64 0, i64 2
  %145 = load i8, i8* %144, align 1
  %146 = zext i8 %145 to i32
  %147 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %137, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %140, i32 %143, i32 %146)
  %148 = load i32, i32* @gdb_stdlog, align 4
  %149 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %148, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %150

150:                                              ; preds = %163, %136
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* %13, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %166

154:                                              ; preds = %150
  %155 = load i32, i32* @gdb_stdlog, align 4
  %156 = load i8*, i8** %4, align 8
  %157 = load i32, i32* %12, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %156, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %155, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %161)
  br label %163

163:                                              ; preds = %154
  %164 = load i32, i32* %12, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %12, align 4
  br label %150

166:                                              ; preds = %150
  %167 = load i32, i32* @gdb_stdlog, align 4
  %168 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %167, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  br label %169

169:                                              ; preds = %166, %133
  %170 = load i32, i32* %13, align 4
  store i32 %170, i32* %3, align 4
  br label %178

171:                                              ; preds = %86
  br label %172

172:                                              ; preds = %171, %55
  br label %173

173:                                              ; preds = %172, %85
  %174 = load i32, i32* %9, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %9, align 4
  br label %33

176:                                              ; preds = %33
  %177 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %178

178:                                              ; preds = %176, %169, %84
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @readchar(i32) #1

declare dso_local i32 @target_mourn_inferior(...) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @fputs_filtered(i8*, i32) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*, ...) #1

declare dso_local i32 @read_frame(i8*) #1

declare dso_local i32 @fromb64(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @compute_checksum(i32, i8*, i32) #1

declare dso_local i32 @printf_unfiltered(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
