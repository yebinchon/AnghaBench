; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_compare_sections_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_compare_sections_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i64, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i8* }
%struct.remote_state = type { i32 }
%struct.cleanup = type { i32 }

@exec_bfd = external dso_local global %struct.TYPE_9__*, align 8
@.str = private unnamed_addr constant [44 x i8] c"command cannot be used without an exec file\00", align 1
@current_target = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"remote\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"command can only be used with remote target\00", align 1
@SEC_LOAD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"qCRC:%lx,%lx\00", align 1
@xfree = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"target memory fault, section %s, range 0x%s -- 0x%s\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"remote target does not support this operation\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Section %s, range 0x%s -- 0x%s: \00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"matched.\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"MIS-MATCHED!\0A\00", align 1
@.str.9 = private unnamed_addr constant [78 x i8] c"One or more sections of the remote executable does not match\0Athe loaded file\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"No loaded section named '%s'.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @compare_sections_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compare_sections_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.remote_state*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.cleanup*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %18 = call %struct.remote_state* (...) @get_remote_state()
  store %struct.remote_state* %18, %struct.remote_state** %5, align 8
  %19 = load %struct.remote_state*, %struct.remote_state** %5, align 8
  %20 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @alloca(i32 %21)
  store i8* %22, i8** %13, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** @exec_bfd, align 8
  %24 = icmp ne %struct.TYPE_9__* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %2
  %26 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %2
  %28 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @current_target, i32 0, i32 0), align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @current_target, i32 0, i32 0), align 8
  %32 = call i64 @strcmp(i8* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30, %27
  %35 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %30
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** @exec_bfd, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %6, align 8
  br label %40

40:                                               ; preds = %157, %36
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %42 = icmp ne %struct.TYPE_10__* %41, null
  br i1 %42, label %43, label %161

43:                                               ; preds = %40
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @SEC_LOAD, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %43
  br label %157

51:                                               ; preds = %43
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %53 = call i64 @bfd_get_section_size(%struct.TYPE_10__* %52)
  store i64 %53, i64* %14, align 8
  %54 = load i64, i64* %14, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %157

57:                                               ; preds = %51
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** @exec_bfd, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %60 = call i8* @bfd_get_section_name(%struct.TYPE_9__* %58, %struct.TYPE_10__* %59)
  store i8* %60, i8** %12, align 8
  %61 = load i8*, i8** %3, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load i8*, i8** %3, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = call i64 @strcmp(i8* %64, i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %157

69:                                               ; preds = %63, %57
  store i32 1, i32* %16, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %15, align 8
  %73 = load i8*, i8** %13, align 8
  %74 = load i64, i64* %15, align 8
  %75 = load i64, i64* %14, align 8
  %76 = call i32 @sprintf(i8* %73, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i64 %74, i64 %75)
  %77 = load i8*, i8** %13, align 8
  %78 = call i32 @putpkt(i8* %77)
  %79 = load i64, i64* %14, align 8
  %80 = call i8* @xmalloc(i64 %79)
  store i8* %80, i8** %11, align 8
  %81 = load i32, i32* @xfree, align 4
  %82 = load i8*, i8** %11, align 8
  %83 = call %struct.cleanup* @make_cleanup(i32 %81, i8* %82)
  store %struct.cleanup* %83, %struct.cleanup** %9, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** @exec_bfd, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = load i64, i64* %14, align 8
  %88 = call i32 @bfd_get_section_contents(%struct.TYPE_9__* %84, %struct.TYPE_10__* %85, i8* %86, i32 0, i64 %87)
  %89 = load i8*, i8** %11, align 8
  %90 = load i64, i64* %14, align 8
  %91 = call i64 @crc32(i8* %89, i64 %90, i32 -1)
  store i64 %91, i64* %7, align 8
  %92 = load i8*, i8** %13, align 8
  %93 = load %struct.remote_state*, %struct.remote_state** %5, align 8
  %94 = getelementptr inbounds %struct.remote_state, %struct.remote_state* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @getpkt(i8* %92, i32 %95, i32 0)
  %97 = load i8*, i8** %13, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 69
  br i1 %101, label %102, label %111

102:                                              ; preds = %69
  %103 = load i8*, i8** %12, align 8
  %104 = load i64, i64* %15, align 8
  %105 = call i8* @paddr(i64 %104)
  %106 = load i64, i64* %15, align 8
  %107 = load i64, i64* %14, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i8* @paddr(i64 %108)
  %110 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i8* %103, i8* %105, i8* %109)
  br label %111

111:                                              ; preds = %102, %69
  %112 = load i8*, i8** %13, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 0
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp ne i32 %115, 67
  br i1 %116, label %117, label %119

117:                                              ; preds = %111
  %118 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  br label %119

119:                                              ; preds = %117, %111
  store i64 0, i64* %8, align 8
  %120 = load i8*, i8** %13, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 1
  store i8* %121, i8** %10, align 8
  br label %122

122:                                              ; preds = %133, %119
  %123 = load i8*, i8** %10, align 8
  %124 = load i8, i8* %123, align 1
  %125 = icmp ne i8 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %122
  %127 = load i64, i64* %8, align 8
  %128 = mul i64 %127, 16
  %129 = load i8*, i8** %10, align 8
  %130 = load i8, i8* %129, align 1
  %131 = call i64 @fromhex(i8 signext %130)
  %132 = add i64 %128, %131
  store i64 %132, i64* %8, align 8
  br label %133

133:                                              ; preds = %126
  %134 = load i8*, i8** %10, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %10, align 8
  br label %122

136:                                              ; preds = %122
  %137 = load i8*, i8** %12, align 8
  %138 = load i64, i64* %15, align 8
  %139 = call i8* @paddr(i64 %138)
  %140 = load i64, i64* %15, align 8
  %141 = load i64, i64* %14, align 8
  %142 = add nsw i64 %140, %141
  %143 = call i8* @paddr(i64 %142)
  %144 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %137, i8* %139, i8* %143)
  %145 = load i64, i64* %7, align 8
  %146 = load i64, i64* %8, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %136
  %149 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %154

150:                                              ; preds = %136
  %151 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %152 = load i32, i32* %17, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %17, align 4
  br label %154

154:                                              ; preds = %150, %148
  %155 = load %struct.cleanup*, %struct.cleanup** %9, align 8
  %156 = call i32 @do_cleanups(%struct.cleanup* %155)
  br label %157

157:                                              ; preds = %154, %68, %56, %50
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 2
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %159, align 8
  store %struct.TYPE_10__* %160, %struct.TYPE_10__** %6, align 8
  br label %40

161:                                              ; preds = %40
  %162 = load i32, i32* %17, align 4
  %163 = icmp sgt i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = call i32 @warning(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.9, i64 0, i64 0))
  br label %166

166:                                              ; preds = %164, %161
  %167 = load i8*, i8** %3, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %175

169:                                              ; preds = %166
  %170 = load i32, i32* %16, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %169
  %173 = load i8*, i8** %3, align 8
  %174 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i8* %173)
  br label %175

175:                                              ; preds = %172, %169, %166
  ret void
}

declare dso_local %struct.remote_state* @get_remote_state(...) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @bfd_get_section_size(%struct.TYPE_10__*) #1

declare dso_local i8* @bfd_get_section_name(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64, i64) #1

declare dso_local i32 @putpkt(i8*) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, i8*) #1

declare dso_local i32 @bfd_get_section_contents(%struct.TYPE_9__*, %struct.TYPE_10__*, i8*, i32, i64) #1

declare dso_local i64 @crc32(i8*, i64, i32) #1

declare dso_local i32 @getpkt(i8*, i32, i32) #1

declare dso_local i8* @paddr(i64) #1

declare dso_local i64 @fromhex(i8 signext) #1

declare dso_local i32 @printf_filtered(i8*, ...) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local i32 @warning(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
