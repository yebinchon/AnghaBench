; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8**, i32, i32* }

@PACKAGE = common dso_local global i32 0, align 4
@LOCALEDIR = common dso_local global i32 0, align 4
@opt_mode = common dso_local global i64 0, align 8
@MODE_LIST = common dso_local global i64 0, align 8
@opt_robot = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [66 x i8] c"Compression and decompression with --robot are not supported yet.\00", align 1
@MODE_COMPRESS = common dso_local global i64 0, align 8
@opt_stdout = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@E_ERROR = common dso_local global i32 0, align 4
@user_abort = common dso_local global i32 0, align 4
@stdin_filename = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [80 x i8] c"Cannot read data from standard input when reading filenames from standard input\00", align 1
@exit_status = common dso_local global i32 0, align 4
@E_WARNING = common dso_local global i32 0, align 4
@no_warn = common dso_local global i64 0, align 8
@E_SUCCESS = common dso_local global i32 0, align 4
@V_SILENT = common dso_local global i64 0, align 8
@exit_status_cs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca void (i8*)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = call i32 @tuklib_progname_init(i8** %11)
  %13 = call i32 (...) @io_init()
  %14 = load i32, i32* @PACKAGE, align 4
  %15 = load i32, i32* @LOCALEDIR, align 4
  %16 = call i32 @tuklib_gettext_init(i32 %14, i32 %15)
  %17 = call i32 (...) @message_init()
  %18 = call i32 (...) @hardware_init()
  %19 = load i32, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = call i32 @args_parse(%struct.TYPE_4__* %6, i32 %19, i8** %20)
  %22 = load i64, i64* @opt_mode, align 8
  %23 = load i64, i64* @MODE_LIST, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load i64, i64* @opt_robot, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = call i32 @_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %30 = call i32 @message_fatal(i32 %29)
  br label %31

31:                                               ; preds = %28, %25, %2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 @message_set_files(i32 0)
  br label %41

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @message_set_files(i32 %39)
  br label %41

41:                                               ; preds = %37, %35
  %42 = load i64, i64* @opt_mode, align 8
  %43 = load i64, i64* @MODE_COMPRESS, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %69

45:                                               ; preds = %41
  %46 = load i64, i64* @opt_stdout, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %68

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %54 = load i8**, i8*** %53, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @strcmp(i8* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %52, %45
  %60 = call i64 (...) @is_tty_stdout()
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = call i32 (...) @message_try_help()
  %64 = load i32, i32* @E_ERROR, align 4
  %65 = load i32, i32* @E_ERROR, align 4
  %66 = call i32 @tuklib_exit(i32 %64, i32 %65, i32 0)
  br label %67

67:                                               ; preds = %62, %59
  br label %68

68:                                               ; preds = %67, %52, %48
  br label %69

69:                                               ; preds = %68, %41
  %70 = load i64, i64* @opt_mode, align 8
  %71 = load i64, i64* @MODE_LIST, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = call i32 (...) @signals_init()
  br label %75

75:                                               ; preds = %73, %69
  store void (i8*)* @coder_run, void (i8*)** %7, align 8
  store i32 0, i32* %8, align 4
  br label %76

76:                                               ; preds = %134, %75
  %77 = load i32, i32* %8, align 4
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ult i32 %77, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load i32, i32* @user_abort, align 4
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  br label %85

85:                                               ; preds = %81, %76
  %86 = phi i1 [ false, %76 ], [ %84, %81 ]
  br i1 %86, label %87, label %137

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %89 = load i8**, i8*** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = call i64 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %93)
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %126

96:                                               ; preds = %87
  %97 = load i64, i64* @opt_mode, align 8
  %98 = load i64, i64* @MODE_COMPRESS, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %96
  %101 = call i64 (...) @is_tty_stdout()
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  br label %134

104:                                              ; preds = %100
  br label %110

105:                                              ; preds = %96
  %106 = call i64 (...) @is_tty_stdin()
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  br label %134

109:                                              ; preds = %105
  br label %110

110:                                              ; preds = %109, %104
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  %112 = load i32*, i32** %111, align 8
  %113 = load i32*, i32** @stdin_filename, align 8
  %114 = icmp eq i32* %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = call i32 @_(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0))
  %117 = call i32 @message_error(i32 %116)
  br label %134

118:                                              ; preds = %110
  %119 = load i32*, i32** @stdin_filename, align 8
  %120 = bitcast i32* %119 to i8*
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %122 = load i8**, i8*** %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %122, i64 %124
  store i8* %120, i8** %125, align 8
  br label %126

126:                                              ; preds = %118, %87
  %127 = load void (i8*)*, void (i8*)** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %129 = load i8**, i8*** %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds i8*, i8** %129, i64 %131
  %133 = load i8*, i8** %132, align 8
  call void %127(i8* %133)
  br label %134

134:                                              ; preds = %126, %115, %108, %103
  %135 = load i32, i32* %8, align 4
  %136 = add i32 %135, 1
  store i32 %136, i32* %8, align 4
  br label %76

137:                                              ; preds = %85
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  %139 = load i32*, i32** %138, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %167

141:                                              ; preds = %137
  br label %142

142:                                              ; preds = %141, %147
  %143 = call i8* @read_name(%struct.TYPE_4__* %6)
  store i8* %143, i8** %9, align 8
  %144 = load i8*, i8** %9, align 8
  %145 = icmp eq i8* %144, null
  br i1 %145, label %146, label %147

146:                                              ; preds = %142
  br label %157

147:                                              ; preds = %142
  %148 = load i8*, i8** %9, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 0
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp ne i32 %151, 0
  %153 = zext i1 %152 to i32
  %154 = call i32 @assert(i32 %153)
  %155 = load void (i8*)*, void (i8*)** %7, align 8
  %156 = load i8*, i8** %9, align 8
  call void %155(i8* %156)
  br label %142

157:                                              ; preds = %146
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  %159 = load i32*, i32** %158, align 8
  %160 = load i32*, i32** @stdin_filename, align 8
  %161 = icmp ne i32* %159, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %157
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @fclose(i32 %164)
  br label %166

166:                                              ; preds = %162, %157
  br label %167

167:                                              ; preds = %166, %137
  %168 = call i32 (...) @coder_free()
  %169 = call i32 (...) @args_free()
  %170 = call i32 (...) @signals_exit()
  %171 = load i32, i32* @exit_status, align 4
  store i32 %171, i32* %10, align 4
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* @E_WARNING, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %180

175:                                              ; preds = %167
  %176 = load i64, i64* @no_warn, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %175
  %179 = load i32, i32* @E_SUCCESS, align 4
  store i32 %179, i32* %10, align 4
  br label %180

180:                                              ; preds = %178, %175, %167
  %181 = load i32, i32* %10, align 4
  %182 = load i32, i32* @E_ERROR, align 4
  %183 = call i64 (...) @message_verbosity_get()
  %184 = load i64, i64* @V_SILENT, align 8
  %185 = icmp ne i64 %183, %184
  %186 = zext i1 %185 to i32
  %187 = call i32 @tuklib_exit(i32 %181, i32 %182, i32 %186)
  %188 = load i32, i32* %3, align 4
  ret i32 %188
}

declare dso_local i32 @tuklib_progname_init(i8**) #1

declare dso_local i32 @io_init(...) #1

declare dso_local i32 @tuklib_gettext_init(i32, i32) #1

declare dso_local i32 @message_init(...) #1

declare dso_local i32 @hardware_init(...) #1

declare dso_local i32 @args_parse(%struct.TYPE_4__*, i32, i8**) #1

declare dso_local i32 @message_fatal(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @message_set_files(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @is_tty_stdout(...) #1

declare dso_local i32 @message_try_help(...) #1

declare dso_local i32 @tuklib_exit(i32, i32, i32) #1

declare dso_local i32 @signals_init(...) #1

declare dso_local void @coder_run(i8*) #1

declare dso_local i64 @is_tty_stdin(...) #1

declare dso_local i32 @message_error(i32) #1

declare dso_local i8* @read_name(%struct.TYPE_4__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fclose(i32) #1

declare dso_local i32 @coder_free(...) #1

declare dso_local i32 @args_free(...) #1

declare dso_local i32 @signals_exit(...) #1

declare dso_local i64 @message_verbosity_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
