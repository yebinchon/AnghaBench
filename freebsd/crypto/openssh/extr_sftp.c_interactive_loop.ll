; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp.c_interactive_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp.c_interactive_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sftp_conn = type opaque

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Need cwd\00", align 1
@quiet = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Changing to: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"cd \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"get%s %s%s%s\00", align 1
@global_aflag = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c" -a\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@stdout = common dso_local global i32 0, align 4
@_IOLBF = common dso_local global i32 0, align 4
@infile = common dso_local global i32 0, align 4
@batchmode = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"sftp> \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"sftp> %s\00", align 1
@interrupted = common dso_local global i64 0, align 8
@cmd_interrupt = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@EL_ADDFN = common dso_local global i32 0, align 4
@EL_BIND = common dso_local global i32 0, align 4
@EL_CLIENTDATA = common dso_local global i32 0, align 4
@EL_EDITOR = common dso_local global i32 0, align 4
@EL_HIST = common dso_local global i32 0, align 4
@EL_PROMPT = common dso_local global i32 0, align 4
@EL_SIGNAL = common dso_local global i32 0, align 4
@EL_TERMINAL = common dso_local global i32 0, align 4
@H_ENTER = common dso_local global i32 0, align 4
@H_SETSIZE = common dso_local global i32 0, align 4
@complete = common dso_local global i32* null, align 8
@prompt = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sftp_conn*, i8*, i8*)* @interactive_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interactive_loop(%struct.sftp_conn* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sftp_conn*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [2048 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  store %struct.sftp_conn* %0, %struct.sftp_conn** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i32* null, i32** %14, align 8
  %16 = load %struct.sftp_conn*, %struct.sftp_conn** %5, align 8
  %17 = bitcast %struct.sftp_conn* %16 to i8*
  %18 = call i8* @do_realpath(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = call i32 @fatal(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %3
  %24 = load i8*, i8** %8, align 8
  %25 = call i8* @xstrdup(i8* %24)
  store i8* %25, i8** %10, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %107

28:                                               ; preds = %23
  %29 = load i8*, i8** %6, align 8
  %30 = call i8* @xstrdup(i8* %29)
  store i8* %30, i8** %9, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = call i8* @make_absolute(i8* %31, i8* %32)
  store i8* %33, i8** %9, align 8
  %34 = load %struct.sftp_conn*, %struct.sftp_conn** %5, align 8
  %35 = bitcast %struct.sftp_conn* %34 to i8*
  %36 = load i8*, i8** %9, align 8
  %37 = call i64 @remote_is_dir(i8* %35, i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %69

39:                                               ; preds = %28
  %40 = load i8*, i8** %7, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %69

42:                                               ; preds = %39
  %43 = load i32, i32* @quiet, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @mprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %45, %42
  %49 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %49, i32 2048, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %50)
  %52 = load %struct.sftp_conn*, %struct.sftp_conn** %5, align 8
  %53 = bitcast %struct.sftp_conn* %52 to i8*
  %54 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %55 = load i8*, i8** %10, align 8
  %56 = call i64 @parse_dispatch_command(i8* %53, i8* %54, i8** %8, i8* %55, i32 1)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %48
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 @free(i8* %59)
  %61 = load i8*, i8** %10, align 8
  %62 = call i32 @free(i8* %61)
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @free(i8* %63)
  %65 = load %struct.sftp_conn*, %struct.sftp_conn** %5, align 8
  %66 = bitcast %struct.sftp_conn* %65 to i8*
  %67 = call i32 @free(i8* %66)
  store i32 -1, i32* %4, align 4
  br label %205

68:                                               ; preds = %48
  br label %104

69:                                               ; preds = %39, %28
  %70 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %71 = load i64, i64* @global_aflag, align 8
  %72 = icmp ne i64 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %75 = load i8*, i8** %9, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = icmp eq i8* %76, null
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)
  %80 = load i8*, i8** %7, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %69
  br label %85

83:                                               ; preds = %69
  %84 = load i8*, i8** %7, align 8
  br label %85

85:                                               ; preds = %83, %82
  %86 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %82 ], [ %84, %83 ]
  %87 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %70, i32 2048, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %74, i8* %75, i8* %79, i8* %86)
  %88 = load %struct.sftp_conn*, %struct.sftp_conn** %5, align 8
  %89 = bitcast %struct.sftp_conn* %88 to i8*
  %90 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %91 = load i8*, i8** %10, align 8
  %92 = call i64 @parse_dispatch_command(i8* %89, i8* %90, i8** %8, i8* %91, i32 1)
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %12, align 4
  %94 = load i8*, i8** %9, align 8
  %95 = call i32 @free(i8* %94)
  %96 = load i8*, i8** %10, align 8
  %97 = call i32 @free(i8* %96)
  %98 = load i8*, i8** %8, align 8
  %99 = call i32 @free(i8* %98)
  %100 = load %struct.sftp_conn*, %struct.sftp_conn** %5, align 8
  %101 = bitcast %struct.sftp_conn* %100 to i8*
  %102 = call i32 @free(i8* %101)
  %103 = load i32, i32* %12, align 4
  store i32 %103, i32* %4, align 4
  br label %205

104:                                              ; preds = %68
  %105 = load i8*, i8** %9, align 8
  %106 = call i32 @free(i8* %105)
  br label %107

107:                                              ; preds = %104, %23
  %108 = load i32, i32* @stdout, align 4
  %109 = load i32, i32* @_IOLBF, align 4
  %110 = call i32 @setvbuf(i32 %108, i32* null, i32 %109, i32 0)
  %111 = load i32, i32* @infile, align 4
  %112 = load i32, i32* @_IOLBF, align 4
  %113 = call i32 @setvbuf(i32 %111, i32* null, i32 %112, i32 0)
  %114 = load i32, i32* @batchmode, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %107
  %117 = load i32, i32* @STDIN_FILENO, align 4
  %118 = call i64 @isatty(i32 %117)
  %119 = icmp ne i64 %118, 0
  br label %120

120:                                              ; preds = %116, %107
  %121 = phi i1 [ false, %107 ], [ %119, %116 ]
  %122 = zext i1 %121 to i32
  store i32 %122, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %123

123:                                              ; preds = %189, %120
  %124 = load i32, i32* @SIGINT, align 4
  %125 = load i32, i32* @SIG_IGN, align 4
  %126 = call i32 @signal(i32 %124, i32 %125)
  %127 = load i32*, i32** %14, align 8
  %128 = icmp eq i32* %127, null
  br i1 %128, label %129, label %167

129:                                              ; preds = %123
  %130 = load i32, i32* %13, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %134

134:                                              ; preds = %132, %129
  %135 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %136 = load i32, i32* @infile, align 4
  %137 = call i32* @fgets(i8* %135, i32 2048, i32 %136)
  %138 = icmp eq i32* %137, null
  br i1 %138, label %139, label %145

139:                                              ; preds = %134
  %140 = load i32, i32* %13, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %139
  %143 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %144

144:                                              ; preds = %142, %139
  br label %190

145:                                              ; preds = %134
  %146 = load i32, i32* %13, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %166, label %148

148:                                              ; preds = %145
  %149 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %150 = call i32 @mprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* %149)
  %151 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %152 = call i32 @strlen(i8* %151)
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %165

154:                                              ; preds = %148
  %155 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %156 = call i32 @strlen(i8* %155)
  %157 = sub nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp ne i32 %161, 10
  br i1 %162, label %163, label %165

163:                                              ; preds = %154
  %164 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %165

165:                                              ; preds = %163, %154, %148
  br label %166

166:                                              ; preds = %165, %145
  br label %168

167:                                              ; preds = %123
  br label %168

168:                                              ; preds = %167, %166
  %169 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %170 = call i8* @strrchr(i8* %169, i8 signext 10)
  store i8* %170, i8** %15, align 8
  %171 = load i8*, i8** %15, align 8
  %172 = icmp ne i8* %171, null
  br i1 %172, label %173, label %175

173:                                              ; preds = %168
  %174 = load i8*, i8** %15, align 8
  store i8 0, i8* %174, align 1
  br label %175

175:                                              ; preds = %173, %168
  store i64 0, i64* @interrupted, align 8
  %176 = load i32, i32* @SIGINT, align 4
  %177 = load i32, i32* @cmd_interrupt, align 4
  %178 = call i32 @signal(i32 %176, i32 %177)
  %179 = load %struct.sftp_conn*, %struct.sftp_conn** %5, align 8
  %180 = bitcast %struct.sftp_conn* %179 to i8*
  %181 = getelementptr inbounds [2048 x i8], [2048 x i8]* %11, i64 0, i64 0
  %182 = load i8*, i8** %10, align 8
  %183 = load i32, i32* @batchmode, align 4
  %184 = call i64 @parse_dispatch_command(i8* %180, i8* %181, i8** %8, i8* %182, i32 %183)
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %12, align 4
  %186 = load i32, i32* %12, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %175
  br label %190

189:                                              ; preds = %175
  br label %123

190:                                              ; preds = %188, %144
  %191 = load i32, i32* @SIGCHLD, align 4
  %192 = load i32, i32* @SIG_DFL, align 4
  %193 = call i32 @signal(i32 %191, i32 %192)
  %194 = load i8*, i8** %8, align 8
  %195 = call i32 @free(i8* %194)
  %196 = load i8*, i8** %10, align 8
  %197 = call i32 @free(i8* %196)
  %198 = load %struct.sftp_conn*, %struct.sftp_conn** %5, align 8
  %199 = bitcast %struct.sftp_conn* %198 to i8*
  %200 = call i32 @free(i8* %199)
  %201 = load i32, i32* %12, align 4
  %202 = icmp sge i32 %201, 0
  %203 = zext i1 %202 to i64
  %204 = select i1 %202, i32 0, i32 -1
  store i32 %204, i32* %4, align 4
  br label %205

205:                                              ; preds = %190, %85, %58
  %206 = load i32, i32* %4, align 4
  ret i32 %206
}

declare dso_local i8* @do_realpath(i8*, i8*) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @make_absolute(i8*, i8*) #1

declare dso_local i64 @remote_is_dir(i8*, i8*) #1

declare dso_local i32 @mprintf(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i64 @parse_dispatch_command(i8*, i8*, i8**, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @setvbuf(i32, i32*, i32, i32) #1

declare dso_local i64 @isatty(i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32* @fgets(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
