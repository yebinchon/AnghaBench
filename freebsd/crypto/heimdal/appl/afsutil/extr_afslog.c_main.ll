; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/afsutil/extr_afslog.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/afsutil/extr_afslog.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8** }
%struct.cell_list = type { i32*, %struct.cell_list* }

@args = common dso_local global i32 0, align 4
@num_args = common dso_local global i32 0, align 4
@help_flag = common dso_local global i64 0, align 8
@version_flag = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"AFS does not seem to be present on this machine\00", align 1
@unlog_flag = common dso_local global i64 0, align 8
@verbose = common dso_local global i64 0, align 8
@log_func = common dso_local global i32 0, align 4
@files = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@cells = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@F_OK = common dso_local global i32 0, align 4
@cell_list = common dso_local global %struct.cell_list* null, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"Getting tokens for cell \22%s\22\00", align 1
@cache_string = common dso_local global i64 0, align 8
@client_string = common dso_local global i64 0, align 8
@context = common dso_local global i32* null, align 8
@id = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.cell_list*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @setprogname(i8* %14)
  %16 = load i32, i32* @args, align 4
  %17 = load i32, i32* @num_args, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = call i64 @getarg(i32 %16, i32 %17, i32 %18, i8** %19, i32* %6)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = call i32 @usage(i32 1)
  br label %24

24:                                               ; preds = %22, %2
  %25 = load i64, i64* @help_flag, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 @usage(i32 0)
  br label %29

29:                                               ; preds = %27, %24
  %30 = load i64, i64* @version_flag, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = call i32 @print_version(i32* null)
  %34 = call i32 @exit(i32 0) #3
  unreachable

35:                                               ; preds = %29
  %36 = call i32 (...) @k_hasafs()
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = call i32 @errx(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %35
  %41 = load i64, i64* @unlog_flag, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = call i32 (...) @k_unlog()
  %45 = call i32 @exit(i32 0) #3
  unreachable

46:                                               ; preds = %40
  %47 = load i64, i64* @verbose, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* @log_func, align 4
  %51 = call i32 @kafs_set_verbose(i32 %50, i32* null)
  br label %52

52:                                               ; preds = %49, %46
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %66, %52
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @files, i32 0, i32 0), align 8
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %53
  %58 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @files, i32 0, i32 1), align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @afslog_file(i8* %62)
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %57
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %53

69:                                               ; preds = %53
  %70 = call i32 @free_getarg_strings(%struct.TYPE_4__* @files)
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %84, %69
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cells, i32 0, i32 0), align 8
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %71
  %76 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cells, i32 0, i32 1), align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @afslog_cell(i8* %80, i32 1)
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %75
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %71

87:                                               ; preds = %71
  %88 = call i32 @free_getarg_strings(%struct.TYPE_4__* @cells)
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %144, %87
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %147

94:                                               ; preds = %90
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  %97 = load i8**, i8*** %5, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %97, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = call i64 @strcmp(i8* %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %129, label %104

104:                                              ; preds = %94
  %105 = load i8**, i8*** %5, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %105, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = call i64 @strcmp(i8* %109, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %129, label %112

112:                                              ; preds = %104
  %113 = load i8**, i8*** %5, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8*, i8** %113, i64 %115
  %117 = load i8*, i8** %116, align 8
  %118 = call i64 @strchr(i8* %117, i8 signext 47)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %129, label %120

120:                                              ; preds = %112
  %121 = load i8**, i8*** %5, align 8
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %121, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = load i32, i32* @F_OK, align 4
  %127 = call i64 @access(i8* %125, i32 %126)
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %120, %112, %104, %94
  %130 = load i8**, i8*** %5, align 8
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8*, i8** %130, i64 %132
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @afslog_file(i8* %134)
  br label %143

136:                                              ; preds = %120
  %137 = load i8**, i8*** %5, align 8
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8*, i8** %137, i64 %139
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @afslog_cell(i8* %141, i32 1)
  br label %143

143:                                              ; preds = %136, %129
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %7, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %7, align 4
  br label %90

147:                                              ; preds = %90
  %148 = load i32, i32* %8, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %147
  %151 = call i64 @do_afslog(i32* null)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load i32, i32* %10, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %10, align 4
  br label %156

156:                                              ; preds = %153, %150
  br label %185

157:                                              ; preds = %147
  %158 = load %struct.cell_list*, %struct.cell_list** @cell_list, align 8
  store %struct.cell_list* %158, %struct.cell_list** %11, align 8
  br label %159

159:                                              ; preds = %180, %157
  %160 = load %struct.cell_list*, %struct.cell_list** %11, align 8
  %161 = icmp ne %struct.cell_list* %160, null
  br i1 %161, label %162, label %184

162:                                              ; preds = %159
  %163 = load i64, i64* @verbose, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %162
  %166 = load %struct.cell_list*, %struct.cell_list** %11, align 8
  %167 = getelementptr inbounds %struct.cell_list, %struct.cell_list* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = call i32 @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32* %168)
  br label %170

170:                                              ; preds = %165, %162
  %171 = load %struct.cell_list*, %struct.cell_list** %11, align 8
  %172 = getelementptr inbounds %struct.cell_list, %struct.cell_list* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = call i64 @do_afslog(i32* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %170
  %177 = load i32, i32* %10, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %10, align 4
  br label %179

179:                                              ; preds = %176, %170
  br label %180

180:                                              ; preds = %179
  %181 = load %struct.cell_list*, %struct.cell_list** %11, align 8
  %182 = getelementptr inbounds %struct.cell_list, %struct.cell_list* %181, i32 0, i32 1
  %183 = load %struct.cell_list*, %struct.cell_list** %182, align 8
  store %struct.cell_list* %183, %struct.cell_list** %11, align 8
  br label %159

184:                                              ; preds = %159
  br label %185

185:                                              ; preds = %184, %156
  %186 = load i32, i32* %10, align 4
  ret i32 %186
}

declare dso_local i32 @setprogname(i8*) #1

declare dso_local i64 @getarg(i32, i32, i32, i8**, i32*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @print_version(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @k_hasafs(...) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @k_unlog(...) #1

declare dso_local i32 @kafs_set_verbose(i32, i32*) #1

declare dso_local i32 @afslog_file(i8*) #1

declare dso_local i32 @free_getarg_strings(%struct.TYPE_4__*) #1

declare dso_local i32 @afslog_cell(i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i64 @do_afslog(i32*) #1

declare dso_local i32 @warnx(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
