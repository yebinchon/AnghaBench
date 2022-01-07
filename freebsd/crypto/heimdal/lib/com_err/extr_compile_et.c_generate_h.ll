; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/com_err/extr_compile_et.c_generate_h.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/com_err/extr_compile_et.c_generate_h.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.error_code = type { i8*, i32, %struct.error_code* }

@hfn = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"__%s__\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"/* Generated from %s */\0A\00", align 1
@filename = common dso_local global i8* null, align 8
@id_str = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"/* %s */\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"#ifndef %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"#define %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"struct et_list;\0A\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"void initialize_%s_error_table_r(struct et_list **);\0A\00", align 1
@name = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [39 x i8] c"void initialize_%s_error_table(void);\0A\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"#define init_%s_err_tbl initialize_%s_error_table\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"typedef enum %s_error_number{\0A\00", align 1
@codes = common dso_local global %struct.error_code* null, align 8
@.str.12 = private unnamed_addr constant [13 x i8] c"\09%s = %ld%s\0A\00", align 1
@base_id = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"} %s_error_number;\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"#define ERROR_TABLE_BASE_%s %ld\0A\00", align 1
@.str.17 = private unnamed_addr constant [49 x i8] c"#define COM_ERR_BINDDOMAIN_%s \22heim_com_err%ld\22\0A\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"#endif /* %s */\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @generate_h to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generate_h() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.error_code*, align 8
  %3 = alloca [128 x i8], align 16
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = load i8*, i8** @hfn, align 8
  %7 = call i32* @fopen(i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  br label %121

11:                                               ; preds = %0
  %12 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %13 = load i8*, i8** @hfn, align 8
  %14 = call i32 @snprintf(i8* %12, i32 128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  %15 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  store i8* %15, i8** %5, align 8
  br label %16

16:                                               ; preds = %28, %11
  %17 = load i8*, i8** %5, align 8
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8
  %22 = load i8, i8* %21, align 1
  %23 = call i32 @isalnum(i8 zeroext %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = load i8*, i8** %5, align 8
  store i8 95, i8* %26, align 1
  br label %27

27:                                               ; preds = %25, %20
  br label %28

28:                                               ; preds = %27
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %5, align 8
  br label %16

31:                                               ; preds = %16
  %32 = load i32*, i32** %4, align 8
  %33 = load i8*, i8** @filename, align 8
  %34 = call i32 (i32*, i8*, ...) @fprintf(i32* %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  %35 = load i8*, i8** @id_str, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i32*, i32** %4, align 8
  %39 = load i8*, i8** @id_str, align 8
  %40 = call i32 (i32*, i8*, ...) @fprintf(i32* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %37, %31
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 (i32*, i8*, ...) @fprintf(i32* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %44 = load i32*, i32** %4, align 8
  %45 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %46 = call i32 (i32*, i8*, ...) @fprintf(i32* %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %45)
  %47 = load i32*, i32** %4, align 8
  %48 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %49 = call i32 (i32*, i8*, ...) @fprintf(i32* %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %48)
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 (i32*, i8*, ...) @fprintf(i32* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 (i32*, i8*, ...) @fprintf(i32* %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 (i32*, i8*, ...) @fprintf(i32* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %56 = load i32*, i32** %4, align 8
  %57 = load i8*, i8** @name, align 8
  %58 = call i32 (i32*, i8*, ...) @fprintf(i32* %56, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0), i8* %57)
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 (i32*, i8*, ...) @fprintf(i32* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %61 = load i32*, i32** %4, align 8
  %62 = load i8*, i8** @name, align 8
  %63 = call i32 (i32*, i8*, ...) @fprintf(i32* %61, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i8* %62)
  %64 = load i32*, i32** %4, align 8
  %65 = load i8*, i8** @name, align 8
  %66 = load i8*, i8** @name, align 8
  %67 = call i32 (i32*, i8*, ...) @fprintf(i32* %64, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i64 0, i64 0), i8* %65, i8* %66)
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 (i32*, i8*, ...) @fprintf(i32* %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %70 = load i32*, i32** %4, align 8
  %71 = load i8*, i8** @name, align 8
  %72 = call i32 (i32*, i8*, ...) @fprintf(i32* %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i8* %71)
  %73 = load %struct.error_code*, %struct.error_code** @codes, align 8
  store %struct.error_code* %73, %struct.error_code** %2, align 8
  br label %74

74:                                               ; preds = %94, %41
  %75 = load %struct.error_code*, %struct.error_code** %2, align 8
  %76 = icmp ne %struct.error_code* %75, null
  br i1 %76, label %77, label %98

77:                                               ; preds = %74
  %78 = load i32*, i32** %4, align 8
  %79 = load %struct.error_code*, %struct.error_code** %2, align 8
  %80 = getelementptr inbounds %struct.error_code, %struct.error_code* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load i32, i32* @base_id, align 4
  %83 = load %struct.error_code*, %struct.error_code** %2, align 8
  %84 = getelementptr inbounds %struct.error_code, %struct.error_code* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %82, %85
  %87 = load %struct.error_code*, %struct.error_code** %2, align 8
  %88 = getelementptr inbounds %struct.error_code, %struct.error_code* %87, i32 0, i32 2
  %89 = load %struct.error_code*, %struct.error_code** %88, align 8
  %90 = icmp ne %struct.error_code* %89, null
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)
  %93 = call i32 (i32*, i8*, ...) @fprintf(i32* %78, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8* %81, i32 %86, i8* %92)
  br label %94

94:                                               ; preds = %77
  %95 = load %struct.error_code*, %struct.error_code** %2, align 8
  %96 = getelementptr inbounds %struct.error_code, %struct.error_code* %95, i32 0, i32 2
  %97 = load %struct.error_code*, %struct.error_code** %96, align 8
  store %struct.error_code* %97, %struct.error_code** %2, align 8
  br label %74

98:                                               ; preds = %74
  %99 = load i32*, i32** %4, align 8
  %100 = load i8*, i8** @name, align 8
  %101 = call i32 (i32*, i8*, ...) @fprintf(i32* %99, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i8* %100)
  %102 = load i32*, i32** %4, align 8
  %103 = call i32 (i32*, i8*, ...) @fprintf(i32* %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %104 = load i32*, i32** %4, align 8
  %105 = load i8*, i8** @name, align 8
  %106 = load i32, i32* @base_id, align 4
  %107 = call i32 (i32*, i8*, ...) @fprintf(i32* %104, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0), i8* %105, i32 %106)
  %108 = load i32*, i32** %4, align 8
  %109 = call i32 (i32*, i8*, ...) @fprintf(i32* %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %110 = load i32*, i32** %4, align 8
  %111 = load i8*, i8** @name, align 8
  %112 = load i32, i32* @base_id, align 4
  %113 = call i32 (i32*, i8*, ...) @fprintf(i32* %110, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.17, i64 0, i64 0), i8* %111, i32 %112)
  %114 = load i32*, i32** %4, align 8
  %115 = call i32 (i32*, i8*, ...) @fprintf(i32* %114, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %116 = load i32*, i32** %4, align 8
  %117 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %118 = call i32 (i32*, i8*, ...) @fprintf(i32* %116, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i8* %117)
  %119 = load i32*, i32** %4, align 8
  %120 = call i32 @fclose(i32* %119)
  store i32 0, i32* %1, align 4
  br label %121

121:                                              ; preds = %98, %10
  %122 = load i32, i32* %1, align 4
  ret i32 %122
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @isalnum(i8 zeroext) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
