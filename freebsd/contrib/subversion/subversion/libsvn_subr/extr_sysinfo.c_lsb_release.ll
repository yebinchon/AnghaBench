; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_sysinfo.c_lsb_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_sysinfo.c_lsb_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i8* }

@lsb_release.args = internal constant [3 x i8*] [i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [21 x i8] c"/usr/bin/lsb_release\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"--all\00", align 1
@SVN_NULL_DEVICE_NAME = common dso_local global i32 0, align 4
@APR_READ = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@APR_WRITE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Distributor ID\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Description\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Release\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Codename\00", align 1
@SIGKILL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"%s%s%s%s\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"%s%s%s%s%s%s\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*)* @lsb_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @lsb_release(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_9__, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %16 = load i32, i32* @SVN_NULL_DEVICE_NAME, align 4
  %17 = load i32, i32* @APR_READ, align 4
  %18 = load i32, i32* @APR_OS_DEFAULT, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = call i32* @svn_io_file_open(i32** %11, i32 %16, i32 %17, i32 %18, i32* %19)
  store i32* %20, i32** %10, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @SVN_NULL_DEVICE_NAME, align 4
  %25 = load i32, i32* @APR_WRITE, align 4
  %26 = load i32, i32* @APR_OS_DEFAULT, align 4
  %27 = load i32*, i32** %3, align 8
  %28 = call i32* @svn_io_file_open(i32** %12, i32 %24, i32 %25, i32 %26, i32* %27)
  store i32* %28, i32** %10, align 8
  br label %29

29:                                               ; preds = %23, %1
  %30 = load i32*, i32** %10, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %42, label %32

32:                                               ; preds = %29
  %33 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @lsb_release.args, i64 0, i64 0), align 16
  %34 = load i64, i64* @FALSE, align 8
  %35 = load i64, i64* @FALSE, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = load i32, i32* @TRUE, align 4
  %38 = load i64, i64* @FALSE, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = load i32*, i32** %3, align 8
  %41 = call i32* @svn_io_start_cmd3(%struct.TYPE_9__* %8, i32* null, i8* %33, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @lsb_release.args, i64 0, i64 0), i32* null, i64 %34, i64 %35, i32* %36, i32 %37, i32* null, i64 %38, i32* %39, i32* %40)
  store i32* %41, i32** %10, align 8
  br label %42

42:                                               ; preds = %32, %29
  %43 = load i32*, i32** %10, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @svn_error_clear(i32* %46)
  store i8* null, i8** %2, align 8
  br label %187

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @TRUE, align 4
  %52 = load i32*, i32** %3, align 8
  %53 = call i32* @svn_stream_from_aprfile2(i32 %50, i32 %51, i32* %52)
  store i32* %53, i32** %9, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %123

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %109, %73, %56
  %58 = load i64, i64* @FALSE, align 8
  store i64 %58, i64* %13, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = load i32*, i32** %3, align 8
  %61 = call i32* @svn_stream_readline(i32* %59, %struct.TYPE_8__** %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64* %13, i32* %60)
  store i32* %61, i32** %10, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %57
  %65 = load i64, i64* %13, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64, %57
  br label %110

68:                                               ; preds = %64
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %70 = call i8* @stringbuf_split_key(%struct.TYPE_8__* %69, i8 signext 58)
  store i8* %70, i8** %15, align 8
  %71 = load i8*, i8** %15, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  br label %57

74:                                               ; preds = %68
  %75 = load i8*, i8** %15, align 8
  %76 = call i64 @svn_cstring_casecmp(i8* %75, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %77 = icmp eq i64 0, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  store i8* %81, i8** %4, align 8
  br label %109

82:                                               ; preds = %74
  %83 = load i8*, i8** %15, align 8
  %84 = call i64 @svn_cstring_casecmp(i8* %83, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %85 = icmp eq i64 0, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  store i8* %89, i8** %5, align 8
  br label %108

90:                                               ; preds = %82
  %91 = load i8*, i8** %15, align 8
  %92 = call i64 @svn_cstring_casecmp(i8* %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %93 = icmp eq i64 0, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  store i8* %97, i8** %6, align 8
  br label %107

98:                                               ; preds = %90
  %99 = load i8*, i8** %15, align 8
  %100 = call i64 @svn_cstring_casecmp(i8* %99, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %101 = icmp eq i64 0, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  store i8* %105, i8** %7, align 8
  br label %106

106:                                              ; preds = %102, %98
  br label %107

107:                                              ; preds = %106, %94
  br label %108

108:                                              ; preds = %107, %86
  br label %109

109:                                              ; preds = %108, %78
  br label %57

110:                                              ; preds = %67
  %111 = load i32*, i32** %10, align 8
  %112 = load i32*, i32** %9, align 8
  %113 = call i32 @svn_stream_close(i32* %112)
  %114 = call i32* @svn_error_compose_create(i32* %111, i32 %113)
  store i32* %114, i32** %10, align 8
  %115 = load i32*, i32** %10, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %122

117:                                              ; preds = %110
  %118 = load i32*, i32** %10, align 8
  %119 = call i32 @svn_error_clear(i32* %118)
  %120 = load i32, i32* @SIGKILL, align 4
  %121 = call i32 @apr_proc_kill(%struct.TYPE_9__* %8, i32 %120)
  store i8* null, i8** %2, align 8
  br label %187

122:                                              ; preds = %110
  br label %123

123:                                              ; preds = %122, %48
  %124 = load i32*, i32** %3, align 8
  %125 = call i32* @svn_io_wait_for_cmd(%struct.TYPE_9__* %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32* null, i32* null, i32* %124)
  store i32* %125, i32** %10, align 8
  %126 = load i32*, i32** %10, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load i32*, i32** %10, align 8
  %130 = call i32 @svn_error_clear(i32* %129)
  store i8* null, i8** %2, align 8
  br label %187

131:                                              ; preds = %123
  %132 = load i8*, i8** %5, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %153

134:                                              ; preds = %131
  %135 = load i32*, i32** %3, align 8
  %136 = load i8*, i8** %5, align 8
  %137 = load i8*, i8** %7, align 8
  %138 = icmp ne i8* %137, null
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %141 = load i8*, i8** %7, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %145

143:                                              ; preds = %134
  %144 = load i8*, i8** %7, align 8
  br label %146

145:                                              ; preds = %134
  br label %146

146:                                              ; preds = %145, %143
  %147 = phi i8* [ %144, %143 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), %145 ]
  %148 = load i8*, i8** %7, align 8
  %149 = icmp ne i8* %148, null
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %152 = call i8* (i32*, i8*, i8*, i8*, i8*, i8*, ...) @apr_psprintf(i32* %135, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* %136, i8* %140, i8* %147, i8* %151)
  store i8* %152, i8** %2, align 8
  br label %187

153:                                              ; preds = %131
  %154 = load i8*, i8** %4, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %186

156:                                              ; preds = %153
  %157 = load i32*, i32** %3, align 8
  %158 = load i8*, i8** %4, align 8
  %159 = load i8*, i8** %6, align 8
  %160 = icmp ne i8* %159, null
  %161 = zext i1 %160 to i64
  %162 = select i1 %160, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %163 = load i8*, i8** %6, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %165, label %167

165:                                              ; preds = %156
  %166 = load i8*, i8** %6, align 8
  br label %168

167:                                              ; preds = %156
  br label %168

168:                                              ; preds = %167, %165
  %169 = phi i8* [ %166, %165 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), %167 ]
  %170 = load i8*, i8** %7, align 8
  %171 = icmp ne i8* %170, null
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %174 = load i8*, i8** %7, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %176, label %178

176:                                              ; preds = %168
  %177 = load i8*, i8** %7, align 8
  br label %179

178:                                              ; preds = %168
  br label %179

179:                                              ; preds = %178, %176
  %180 = phi i8* [ %177, %176 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), %178 ]
  %181 = load i8*, i8** %7, align 8
  %182 = icmp ne i8* %181, null
  %183 = zext i1 %182 to i64
  %184 = select i1 %182, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %185 = call i8* (i32*, i8*, i8*, i8*, i8*, i8*, ...) @apr_psprintf(i32* %157, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8* %158, i8* %162, i8* %169, i8* %173, i8* %180, i8* %184)
  store i8* %185, i8** %2, align 8
  br label %187

186:                                              ; preds = %153
  store i8* null, i8** %2, align 8
  br label %187

187:                                              ; preds = %186, %179, %146, %128, %117, %45
  %188 = load i8*, i8** %2, align 8
  ret i8* %188
}

declare dso_local i32* @svn_io_file_open(i32**, i32, i32, i32, i32*) #1

declare dso_local i32* @svn_io_start_cmd3(%struct.TYPE_9__*, i32*, i8*, i8**, i32*, i64, i64, i32*, i32, i32*, i64, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local i32* @svn_stream_from_aprfile2(i32, i32, i32*) #1

declare dso_local i32* @svn_stream_readline(i32*, %struct.TYPE_8__**, i8*, i64*, i32*) #1

declare dso_local i8* @stringbuf_split_key(%struct.TYPE_8__*, i8 signext) #1

declare dso_local i64 @svn_cstring_casecmp(i8*, i8*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32) #1

declare dso_local i32 @svn_stream_close(i32*) #1

declare dso_local i32 @apr_proc_kill(%struct.TYPE_9__*, i32) #1

declare dso_local i32* @svn_io_wait_for_cmd(%struct.TYPE_9__*, i8*, i32*, i32*, i32*) #1

declare dso_local i8* @apr_psprintf(i32*, i8*, i8*, i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
