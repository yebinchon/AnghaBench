; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibdiag_common.c_ibdiag_process_opts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibdiag_common.c_ibdiag_process_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibdiag_opt = type { i32 }

@prog_name = common dso_local global i8* null, align 8
@prog_args = common dso_local global i8* null, align 8
@prog_examples = common dso_local global i8** null, align 8
@long_opts = common dso_local global i64 0, align 8
@opts_map = common dso_local global %struct.ibdiag_opt** null, align 8
@IBDIAG_CONFIG_GENERAL = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ibdiag_process_opts(i32 %0, i8** %1, i8* %2, i8* %3, %struct.ibdiag_opt* %4, i32 (i8*, i32, i8*)* %5, i8* %6, i8** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.ibdiag_opt*, align 8
  %15 = alloca i32 (i8*, i32, i8*)*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca [1024 x i8], align 16
  %19 = alloca %struct.ibdiag_opt*, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i8** %1, i8*** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store %struct.ibdiag_opt* %4, %struct.ibdiag_opt** %14, align 8
  store i32 (i8*, i32, i8*)* %5, i32 (i8*, i32, i8*)** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8** %7, i8*** %17, align 8
  %21 = load i8**, i8*** %11, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** @prog_name, align 8
  %24 = load i8*, i8** %16, align 8
  store i8* %24, i8** @prog_args, align 8
  %25 = load i8**, i8*** %17, align 8
  store i8** %25, i8*** @prog_examples, align 8
  %26 = load i64, i64* @long_opts, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %8
  %29 = load i64, i64* @long_opts, align 8
  %30 = call i32 @free(i64 %29)
  br label %31

31:                                               ; preds = %28, %8
  %32 = load i8*, i8** %13, align 8
  %33 = load %struct.ibdiag_opt*, %struct.ibdiag_opt** %14, align 8
  %34 = load %struct.ibdiag_opt**, %struct.ibdiag_opt*** @opts_map, align 8
  %35 = call i64 @make_long_opts(i8* %32, %struct.ibdiag_opt* %33, %struct.ibdiag_opt** %34)
  store i64 %35, i64* @long_opts, align 8
  %36 = load i64, i64* @long_opts, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  store i32 -1, i32* %9, align 4
  br label %92

39:                                               ; preds = %31
  %40 = load i32, i32* @IBDIAG_CONFIG_GENERAL, align 4
  %41 = call i32 @read_ibdiag_config(i32 %40)
  %42 = load i64, i64* @long_opts, align 8
  %43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %44 = call i32 @make_str_opts(i64 %42, i8* %43, i32 1024)
  br label %45

45:                                               ; preds = %39, %90
  %46 = load i32, i32* %10, align 4
  %47 = load i8**, i8*** %11, align 8
  %48 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %49 = load i64, i64* @long_opts, align 8
  %50 = call i32 @getopt_long(i32 %46, i8** %47, i8* %48, i64 %49, i32* null)
  store i32 %50, i32* %20, align 4
  %51 = load i32, i32* %20, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %91

54:                                               ; preds = %45
  %55 = load %struct.ibdiag_opt**, %struct.ibdiag_opt*** @opts_map, align 8
  %56 = load i32, i32* %20, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.ibdiag_opt*, %struct.ibdiag_opt** %55, i64 %57
  %59 = load %struct.ibdiag_opt*, %struct.ibdiag_opt** %58, align 8
  store %struct.ibdiag_opt* %59, %struct.ibdiag_opt** %19, align 8
  %60 = load %struct.ibdiag_opt*, %struct.ibdiag_opt** %19, align 8
  %61 = icmp ne %struct.ibdiag_opt* %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %54
  %63 = call i32 (...) @ibdiag_show_usage()
  br label %64

64:                                               ; preds = %62, %54
  %65 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %15, align 8
  %66 = icmp ne i32 (i8*, i32, i8*)* %65, null
  br i1 %66, label %67, label %82

67:                                               ; preds = %64
  %68 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %15, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = load i32, i32* %20, align 4
  %71 = load i8*, i8** @optarg, align 8
  %72 = call i32 %68(i8* %69, i32 %70, i8* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %67
  %75 = load i32, i32* %20, align 4
  %76 = load i8*, i8** @optarg, align 8
  %77 = call i64 @process_opt(i32 %75, i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = call i32 (...) @ibdiag_show_usage()
  br label %81

81:                                               ; preds = %79, %74, %67
  br label %90

82:                                               ; preds = %64
  %83 = load i32, i32* %20, align 4
  %84 = load i8*, i8** @optarg, align 8
  %85 = call i64 @process_opt(i32 %83, i8* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = call i32 (...) @ibdiag_show_usage()
  br label %89

89:                                               ; preds = %87, %82
  br label %90

90:                                               ; preds = %89, %81
  br label %45

91:                                               ; preds = %53
  store i32 0, i32* %9, align 4
  br label %92

92:                                               ; preds = %91, %38
  %93 = load i32, i32* %9, align 4
  ret i32 %93
}

declare dso_local i32 @free(i64) #1

declare dso_local i64 @make_long_opts(i8*, %struct.ibdiag_opt*, %struct.ibdiag_opt**) #1

declare dso_local i32 @read_ibdiag_config(i32) #1

declare dso_local i32 @make_str_opts(i64, i8*, i32) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, i64, i32*) #1

declare dso_local i32 @ibdiag_show_usage(...) #1

declare dso_local i64 @process_opt(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
