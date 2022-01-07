; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stack.c_backtrace_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stack.c_backtrace_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cleanup = type { i32 }
%struct.backtrace_command_args = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@backtrace_command_stub = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RETURN_MASK_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @backtrace_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @backtrace_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cleanup*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.backtrace_command_args, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.cleanup* null, %struct.cleanup** %5, align 8
  store i8** null, i8*** %6, align 8
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load i8*, i8** %3, align 8
  store i8* %14, i8** %10, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %140

17:                                               ; preds = %2
  %18 = load i8*, i8** %3, align 8
  %19 = call i8** @buildargv(i8* %18)
  store i8** %19, i8*** %6, align 8
  %20 = load i8**, i8*** %6, align 8
  %21 = call %struct.cleanup* @make_cleanup_freeargv(i8** %20)
  store %struct.cleanup* %21, %struct.cleanup** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %12, align 4
  br label %22

22:                                               ; preds = %86, %17
  %23 = load i8**, i8*** %6, align 8
  %24 = load i32, i32* %12, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %89

29:                                               ; preds = %22
  store i32 0, i32* %13, align 4
  br label %30

30:                                               ; preds = %58, %29
  %31 = load i32, i32* %13, align 4
  %32 = load i8**, i8*** %6, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @strlen(i8* %36)
  %38 = icmp ult i32 %31, %37
  br i1 %38, label %39, label %61

39:                                               ; preds = %30
  %40 = load i8**, i8*** %6, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* %13, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = call signext i8 @tolower(i8 signext %48)
  %50 = load i8**, i8*** %6, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* %13, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  store i8 %49, i8* %57, align 1
  br label %58

58:                                               ; preds = %39
  %59 = load i32, i32* %13, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %13, align 4
  br label %30

61:                                               ; preds = %30
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %61
  %65 = load i8**, i8*** %6, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = call i64 @subset_compare(i8* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %7, align 4
  br label %85

74:                                               ; preds = %64, %61
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  %77 = load i8**, i8*** %6, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @strlen(i8* %81)
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %74, %72
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %12, align 4
  br label %22

89:                                               ; preds = %22
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp sge i32 %93, 0
  br i1 %94, label %95, label %139

95:                                               ; preds = %89
  %96 = load i32, i32* %8, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %137

98:                                               ; preds = %95
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 1
  %101 = call i64 @xmalloc(i32 %100)
  %102 = inttoptr i64 %101 to i8*
  store i8* %102, i8** %10, align 8
  %103 = load i8*, i8** %10, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %98
  %106 = call i32 @nomem(i32 0)
  br label %136

107:                                              ; preds = %98
  %108 = load i8*, i8** %10, align 8
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  %111 = call i32 @memset(i8* %108, i32 0, i32 %110)
  store i32 0, i32* %12, align 4
  br label %112

112:                                              ; preds = %132, %107
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 1
  %116 = icmp slt i32 %113, %115
  br i1 %116, label %117, label %135

117:                                              ; preds = %112
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %131

121:                                              ; preds = %117
  %122 = load i8*, i8** %10, align 8
  %123 = load i8**, i8*** %6, align 8
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %123, i64 %125
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @strcat(i8* %122, i8* %127)
  %129 = load i8*, i8** %10, align 8
  %130 = call i32 @strcat(i8* %129, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %131

131:                                              ; preds = %121, %117
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %12, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %12, align 4
  br label %112

135:                                              ; preds = %112
  br label %136

136:                                              ; preds = %135, %105
  br label %138

137:                                              ; preds = %95
  store i8* null, i8** %10, align 8
  br label %138

138:                                              ; preds = %137, %136
  br label %139

139:                                              ; preds = %138, %89
  br label %140

140:                                              ; preds = %139, %2
  %141 = load i8*, i8** %10, align 8
  %142 = getelementptr inbounds %struct.backtrace_command_args, %struct.backtrace_command_args* %11, i32 0, i32 0
  store i8* %141, i8** %142, align 8
  %143 = load i32, i32* %7, align 4
  %144 = icmp sge i32 %143, 0
  %145 = zext i1 %144 to i32
  %146 = getelementptr inbounds %struct.backtrace_command_args, %struct.backtrace_command_args* %11, i32 0, i32 1
  store i32 %145, i32* %146, align 8
  %147 = load i32, i32* %4, align 4
  %148 = getelementptr inbounds %struct.backtrace_command_args, %struct.backtrace_command_args* %11, i32 0, i32 2
  store i32 %147, i32* %148, align 4
  %149 = load i32, i32* @backtrace_command_stub, align 4
  %150 = bitcast %struct.backtrace_command_args* %11 to i8*
  %151 = load i32, i32* @RETURN_MASK_ERROR, align 4
  %152 = call i32 @catch_errors(i32 %149, i8* %150, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 %151)
  %153 = load i32, i32* %7, align 4
  %154 = icmp sge i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %140
  %156 = load i32, i32* %8, align 4
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load i8*, i8** %10, align 8
  %160 = call i32 @xfree(i8* %159)
  br label %161

161:                                              ; preds = %158, %155, %140
  %162 = load %struct.cleanup*, %struct.cleanup** %5, align 8
  %163 = icmp ne %struct.cleanup* %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load %struct.cleanup*, %struct.cleanup** %5, align 8
  %166 = call i32 @do_cleanups(%struct.cleanup* %165)
  br label %167

167:                                              ; preds = %164, %161
  ret void
}

declare dso_local i8** @buildargv(i8*) #1

declare dso_local %struct.cleanup* @make_cleanup_freeargv(i8**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i64 @subset_compare(i8*, i8*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @nomem(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @catch_errors(i32, i8*, i8*, i32) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
