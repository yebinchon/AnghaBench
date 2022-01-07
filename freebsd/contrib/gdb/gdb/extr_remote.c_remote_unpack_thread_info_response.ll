; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_remote_unpack_thread_info_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_remote_unpack_thread_info_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdb_ext_thread_info = type { i8*, i8*, i8*, i32, i32 }
%struct.remote_state = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"Incomplete response to threadinfo request\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR RMT Thread info mismatch\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ERROR RMT: threadinfo tag mismatch\0A\00", align 1
@TAG_THREADID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"ERROR RMT: length of threadid is not 16\0A\00", align 1
@TAG_EXISTS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"ERROR RMT: 'exists' length too long\0A\00", align 1
@TAG_THREADNAME = common dso_local global i32 0, align 4
@TAG_DISPLAY = common dso_local global i32 0, align 4
@TAG_MOREDISPLAY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"ERROR RMT: unknown thread info tag\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, %struct.gdb_ext_thread_info*)* @remote_unpack_thread_info_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remote_unpack_thread_info_response(i8* %0, i32* %1, %struct.gdb_ext_thread_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.gdb_ext_thread_info*, align 8
  %8 = alloca %struct.remote_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.gdb_ext_thread_info* %2, %struct.gdb_ext_thread_info** %7, align 8
  %15 = call %struct.remote_state* (...) @get_remote_state()
  store %struct.remote_state* %15, %struct.remote_state** %8, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load %struct.remote_state*, %struct.remote_state** %8, align 8
  %18 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %16, i64 %20
  store i8* %21, i8** %13, align 8
  store i32 1, i32* %14, align 4
  %22 = load %struct.gdb_ext_thread_info*, %struct.gdb_ext_thread_info** %7, align 8
  %23 = getelementptr inbounds %struct.gdb_ext_thread_info, %struct.gdb_ext_thread_info* %22, i32 0, i32 3
  store i32 0, i32* %23, align 8
  %24 = load %struct.gdb_ext_thread_info*, %struct.gdb_ext_thread_info** %7, align 8
  %25 = getelementptr inbounds %struct.gdb_ext_thread_info, %struct.gdb_ext_thread_info* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  store i8 0, i8* %27, align 1
  %28 = load %struct.gdb_ext_thread_info*, %struct.gdb_ext_thread_info** %7, align 8
  %29 = getelementptr inbounds %struct.gdb_ext_thread_info, %struct.gdb_ext_thread_info* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  store i8 0, i8* %31, align 1
  %32 = load %struct.gdb_ext_thread_info*, %struct.gdb_ext_thread_info** %7, align 8
  %33 = getelementptr inbounds %struct.gdb_ext_thread_info, %struct.gdb_ext_thread_info* %32, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  store i8 0, i8* %35, align 1
  %36 = load i8*, i8** %5, align 8
  %37 = call i8* (i8*, ...) @unpack_int(i8* %36, i32* %9)
  store i8* %37, i8** %5, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = call i8* @unpack_threadid(i8* %38, i32* %12)
  store i8* %39, i8** %5, align 8
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %3
  %43 = call i32 @warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %3
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @threadmatch(i32* %12, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = call i32 @warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %170

50:                                               ; preds = %44
  %51 = load %struct.gdb_ext_thread_info*, %struct.gdb_ext_thread_info** %7, align 8
  %52 = getelementptr inbounds %struct.gdb_ext_thread_info, %struct.gdb_ext_thread_info* %51, i32 0, i32 4
  %53 = call i32 @copy_threadref(i32* %52, i32* %12)
  br label %54

54:                                               ; preds = %154, %138, %122, %117, %88, %50
  %55 = load i8*, i8** %5, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = icmp ult i8* %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %54
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i8*, i8** %5, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br label %66

66:                                               ; preds = %61, %58, %54
  %67 = phi i1 [ false, %58 ], [ false, %54 ], [ %65, %61 ]
  br i1 %67, label %68, label %168

68:                                               ; preds = %66
  %69 = load i8*, i8** %5, align 8
  %70 = call i8* (i8*, ...) @unpack_int(i8* %69, i32* %11)
  store i8* %70, i8** %5, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = call i8* @unpack_byte(i8* %71, i32* %10)
  store i8* %72, i8** %5, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %9, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %68
  %78 = call i32 @warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %14, align 4
  br label %168

79:                                               ; preds = %68
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @TAG_THREADID, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %79
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 16
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = call i32 @warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %14, align 4
  br label %168

88:                                               ; preds = %83
  %89 = load i8*, i8** %5, align 8
  %90 = call i8* @unpack_threadid(i8* %89, i32* %12)
  store i8* %90, i8** %5, align 8
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @TAG_THREADID, align 4
  %93 = xor i32 %92, -1
  %94 = and i32 %91, %93
  store i32 %94, i32* %9, align 4
  br label %54

95:                                               ; preds = %79
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* @TAG_EXISTS, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %118

99:                                               ; preds = %95
  %100 = load i8*, i8** %5, align 8
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @stub_unpack_int(i8* %100, i32 %101)
  %103 = load %struct.gdb_ext_thread_info*, %struct.gdb_ext_thread_info** %7, align 8
  %104 = getelementptr inbounds %struct.gdb_ext_thread_info, %struct.gdb_ext_thread_info* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* %10, align 4
  %106 = load i8*, i8** %5, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  store i8* %108, i8** %5, align 8
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @TAG_EXISTS, align 4
  %111 = xor i32 %110, -1
  %112 = and i32 %109, %111
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp sgt i32 %113, 8
  br i1 %114, label %115, label %117

115:                                              ; preds = %99
  %116 = call i32 @warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %14, align 4
  br label %168

117:                                              ; preds = %99
  br label %54

118:                                              ; preds = %95
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* @TAG_THREADNAME, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %134

122:                                              ; preds = %118
  %123 = load i8*, i8** %5, align 8
  %124 = load %struct.gdb_ext_thread_info*, %struct.gdb_ext_thread_info** %7, align 8
  %125 = getelementptr inbounds %struct.gdb_ext_thread_info, %struct.gdb_ext_thread_info* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 0
  %128 = load i32, i32* %10, align 4
  %129 = call i8* @unpack_string(i8* %123, i8* %127, i32 %128)
  store i8* %129, i8** %5, align 8
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* @TAG_THREADNAME, align 4
  %132 = xor i32 %131, -1
  %133 = and i32 %130, %132
  store i32 %133, i32* %9, align 4
  br label %54

134:                                              ; preds = %118
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* @TAG_DISPLAY, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %150

138:                                              ; preds = %134
  %139 = load i8*, i8** %5, align 8
  %140 = load %struct.gdb_ext_thread_info*, %struct.gdb_ext_thread_info** %7, align 8
  %141 = getelementptr inbounds %struct.gdb_ext_thread_info, %struct.gdb_ext_thread_info* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 0
  %144 = load i32, i32* %10, align 4
  %145 = call i8* @unpack_string(i8* %139, i8* %143, i32 %144)
  store i8* %145, i8** %5, align 8
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* @TAG_DISPLAY, align 4
  %148 = xor i32 %147, -1
  %149 = and i32 %146, %148
  store i32 %149, i32* %9, align 4
  br label %54

150:                                              ; preds = %134
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* @TAG_MOREDISPLAY, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %166

154:                                              ; preds = %150
  %155 = load i8*, i8** %5, align 8
  %156 = load %struct.gdb_ext_thread_info*, %struct.gdb_ext_thread_info** %7, align 8
  %157 = getelementptr inbounds %struct.gdb_ext_thread_info, %struct.gdb_ext_thread_info* %156, i32 0, i32 2
  %158 = load i8*, i8** %157, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 0
  %160 = load i32, i32* %10, align 4
  %161 = call i8* @unpack_string(i8* %155, i8* %159, i32 %160)
  store i8* %161, i8** %5, align 8
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* @TAG_MOREDISPLAY, align 4
  %164 = xor i32 %163, -1
  %165 = and i32 %162, %164
  store i32 %165, i32* %9, align 4
  br label %54

166:                                              ; preds = %150
  %167 = call i32 @warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %168

168:                                              ; preds = %166, %115, %86, %77, %66
  %169 = load i32, i32* %14, align 4
  store i32 %169, i32* %4, align 4
  br label %170

170:                                              ; preds = %168, %48
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local %struct.remote_state* @get_remote_state(...) #1

declare dso_local i8* @unpack_int(i8*, ...) #1

declare dso_local i8* @unpack_threadid(i8*, i32*) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local i32 @threadmatch(i32*, i32*) #1

declare dso_local i32 @copy_threadref(i32*, i32*) #1

declare dso_local i8* @unpack_byte(i8*, i32*) #1

declare dso_local i32 @stub_unpack_int(i8*, i32) #1

declare dso_local i8* @unpack_string(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
