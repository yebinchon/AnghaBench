; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-keyscan.c_congreet.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-keyscan.c_congreet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }

@fdcon = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"SSH-%d.%d-OpenSSH-keyscan\0D\0A\00", align 1
@PROTOCOL_MAJOR_2 = common dso_local global i32 0, align 4
@PROTOCOL_MINOR_2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"snprintf: buffer too small\00", align 1
@vwrite = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"write (%s): %s\00", align 1
@errno = common dso_local global i32 0, align 4
@read = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"SSH-\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"%s: Connection closed by remote host\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"read (%s): %s\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"%s: bad greeting\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"ssh_packet_set_connection failed\00", align 1
@timeout = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"SSH-%d.%d-%[^\0A]\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"%s doesn't support ssh2\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c"%c %s:%d %s\0A\00", align 1
@print_sshfp = common dso_local global i64 0, align 8
@ssh_port = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @congreet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @congreet(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [256 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca [256 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** @fdcon, align 8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i64 %13
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %10, align 8
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %16 = load i32, i32* @PROTOCOL_MAJOR_2, align 4
  %17 = load i32, i32* @PROTOCOL_MINOR_2, align 4
  %18 = call i32 @snprintf(i8* %15, i32 256, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp uge i64 %23, 256
  br i1 %24, label %25, label %29

25:                                               ; preds = %21, %1
  %26 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @confree(i32 %27)
  br label %194

29:                                               ; preds = %21
  %30 = load i32, i32* @vwrite, align 4
  %31 = load i32, i32* %2, align 4
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %33 = load i32, i32* %3, align 4
  %34 = call i64 @atomicio(i32 %30, i32 %31, i8* %32, i32 %33)
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp ne i64 %34, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %29
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* @errno, align 4
  %43 = call i8* @strerror(i32 %42)
  %44 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %41, i8* %43)
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @confree(i32 %45)
  br label %194

47:                                               ; preds = %29
  br label %48

48:                                               ; preds = %88, %47
  %49 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %50 = call i32 @memset(i8* %49, i8 signext 0, i32 256)
  store i64 256, i64* %9, align 8
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  store i8* %51, i8** %7, align 8
  br label %52

52:                                               ; preds = %77, %48
  %53 = load i64, i64* %9, align 8
  %54 = add i64 %53, -1
  store i64 %54, i64* %9, align 8
  %55 = icmp ne i64 %53, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = load i32, i32* @read, align 4
  %58 = load i32, i32* %2, align 4
  %59 = load i8*, i8** %7, align 8
  %60 = call i64 @atomicio(i32 %57, i32 %58, i8* %59, i32 1)
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %3, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load i8*, i8** %7, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 10
  br label %68

68:                                               ; preds = %63, %56, %52
  %69 = phi i1 [ false, %56 ], [ false, %52 ], [ %67, %63 ]
  br i1 %69, label %70, label %80

70:                                               ; preds = %68
  %71 = load i8*, i8** %7, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 13
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i8*, i8** %7, align 8
  store i8 10, i8* %76, align 1
  br label %77

77:                                               ; preds = %75, %70
  %78 = load i8*, i8** %7, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %7, align 8
  br label %52

80:                                               ; preds = %68
  %81 = load i32, i32* %3, align 4
  %82 = icmp ne i32 %81, 1
  br i1 %82, label %87, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %85 = call i64 @strncmp(i8* %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83, %80
  br label %89

88:                                               ; preds = %83
  br label %48

89:                                               ; preds = %87
  %90 = load i32, i32* %3, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %110

92:                                               ; preds = %89
  %93 = load i32, i32* @errno, align 4
  switch i32 %93, label %100 [
    i32 128, label %94
    i32 129, label %99
  ]

94:                                               ; preds = %92
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %97)
  br label %107

99:                                               ; preds = %92
  br label %107

100:                                              ; preds = %92
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = load i32, i32* @errno, align 4
  %105 = call i8* @strerror(i32 %104)
  %106 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %103, i8* %105)
  br label %107

107:                                              ; preds = %100, %99, %94
  %108 = load i32, i32* %2, align 4
  %109 = call i32 @conrecycle(i32 %108)
  br label %194

110:                                              ; preds = %89
  %111 = load i8*, i8** %7, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp ne i32 %113, 10
  br i1 %114, label %115, label %127

115:                                              ; preds = %110
  %116 = load i8*, i8** %7, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp ne i32 %118, 13
  br i1 %119, label %120, label %127

120:                                              ; preds = %115
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* %123)
  %125 = load i32, i32* %2, align 4
  %126 = call i32 @confree(i32 %125)
  br label %194

127:                                              ; preds = %115, %110
  %128 = load i8*, i8** %7, align 8
  store i8 0, i8* %128, align 1
  %129 = load i32, i32* %2, align 4
  %130 = load i32, i32* %2, align 4
  %131 = call %struct.TYPE_9__* @ssh_packet_set_connection(i32* null, i32 %129, i32 %130)
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  store %struct.TYPE_9__* %131, %struct.TYPE_9__** %133, align 8
  %134 = icmp eq %struct.TYPE_9__* %131, null
  br i1 %134, label %135, label %137

135:                                              ; preds = %127
  %136 = call i32 @fatal(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %137

137:                                              ; preds = %135, %127
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %139, align 8
  %141 = load i32, i32* @timeout, align 4
  %142 = call i32 @ssh_packet_set_timeout(%struct.TYPE_9__* %140, i32 %141, i32 1)
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %144, align 8
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %147 = call i32 @ssh_set_app_data(%struct.TYPE_9__* %145, %struct.TYPE_8__* %146)
  %148 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %149 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %150 = call i32 @sscanf(i8* %148, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32* %4, i32* %5, i8* %149)
  %151 = icmp eq i32 %150, 3
  br i1 %151, label %152, label %159

152:                                              ; preds = %137
  %153 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %154 = call i64 @compat_datafellows(i8* %153)
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  store i64 %154, i64* %158, align 8
  br label %164

159:                                              ; preds = %137
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  store i64 0, i64* %163, align 8
  br label %164

164:                                              ; preds = %159, %152
  %165 = load i32, i32* %4, align 4
  %166 = load i32, i32* %5, align 4
  %167 = call i32 @ssh2_capable(i32 %165, i32 %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %176, label %169

169:                                              ; preds = %164
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 @debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i8* %172)
  %174 = load i32, i32* %2, align 4
  %175 = call i32 @confree(i32 %174)
  br label %194

176:                                              ; preds = %164
  %177 = load i32, i32* @stderr, align 4
  %178 = load i64, i64* @print_sshfp, align 8
  %179 = icmp ne i64 %178, 0
  %180 = zext i1 %179 to i64
  %181 = select i1 %179, i32 59, i32 35
  %182 = trunc i32 %181 to i8
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 0
  %185 = load i8*, i8** %184, align 8
  %186 = load i32, i32* @ssh_port, align 4
  %187 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %188 = call i8* @chop(i8* %187)
  %189 = call i32 @fprintf(i32 %177, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8 signext %182, i8* %185, i32 %186, i8* %188)
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %191 = call i32 @keygrab_ssh2(%struct.TYPE_8__* %190)
  %192 = load i32, i32* %2, align 4
  %193 = call i32 @confree(i32 %192)
  br label %194

194:                                              ; preds = %176, %169, %120, %107, %38, %25
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @confree(i32) #1

declare dso_local i64 @atomicio(i32, i32, i8*, i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @conrecycle(i32) #1

declare dso_local %struct.TYPE_9__* @ssh_packet_set_connection(i32*, i32, i32) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @ssh_packet_set_timeout(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @ssh_set_app_data(%struct.TYPE_9__*, %struct.TYPE_8__*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i8*) #1

declare dso_local i64 @compat_datafellows(i8*) #1

declare dso_local i32 @ssh2_capable(i32, i32) #1

declare dso_local i32 @debug(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8 signext, i8*, i32, i8*) #1

declare dso_local i8* @chop(i8*) #1

declare dso_local i32 @keygrab_ssh2(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
