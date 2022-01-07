; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_list.c_list_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_list.c_list_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@opt_format = common dso_local global i64 0, align 8
@FORMAT_XZ = common dso_local global i64 0, align 8
@FORMAT_AUTO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c"--list works only on .xz files (--format=xz or --format=auto)\00", align 1
@stdin_filename = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"--list does not support reading from standard input\00", align 1
@opt_stdout = common dso_local global i32 0, align 4
@opt_force = common dso_local global i32 0, align 4
@XZ_FILE_INFO_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@opt_robot = common dso_local global i64 0, align 8
@V_WARNING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @list_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i64, i64* @opt_format, align 8
  %7 = load i64, i64* @FORMAT_XZ, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load i64, i64* @opt_format, align 8
  %11 = load i64, i64* @FORMAT_AUTO, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = call i32 @_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @message_fatal(i32 %14)
  br label %16

16:                                               ; preds = %13, %9, %1
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 @message_filename(i8* %17)
  %19 = load i8*, i8** %2, align 8
  %20 = load i8*, i8** @stdin_filename, align 8
  %21 = icmp eq i8* %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = call i32 @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 @message_error(i32 %23)
  br label %65

25:                                               ; preds = %16
  store i32 0, i32* @opt_stdout, align 4
  store i32 1, i32* @opt_force, align 4
  %26 = load i8*, i8** %2, align 8
  %27 = call i32* @io_open_src(i8* %26)
  store i32* %27, i32** %3, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %65

31:                                               ; preds = %25
  %32 = bitcast %struct.TYPE_8__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 bitcast (%struct.TYPE_8__* @XZ_FILE_INFO_INIT to i8*), i64 4, i1 false)
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @parse_indexes(%struct.TYPE_8__* %4, i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %62, label %36

36:                                               ; preds = %31
  %37 = load i64, i64* @opt_robot, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @print_info_robot(%struct.TYPE_8__* %4, i32* %40)
  store i32 %41, i32* %5, align 4
  br label %53

42:                                               ; preds = %36
  %43 = call i64 (...) @message_verbosity_get()
  %44 = load i64, i64* @V_WARNING, align 8
  %45 = icmp sle i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @print_info_basic(%struct.TYPE_8__* %4, i32* %47)
  store i32 %48, i32* %5, align 4
  br label %52

49:                                               ; preds = %42
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @print_info_adv(%struct.TYPE_8__* %4, i32* %50)
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %49, %46
  br label %53

53:                                               ; preds = %52, %39
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = call i32 @update_totals(%struct.TYPE_8__* %4)
  br label %58

58:                                               ; preds = %56, %53
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @lzma_index_end(i32 %60, i32* null)
  br label %62

62:                                               ; preds = %58, %31
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @io_close(i32* %63, i32 0)
  br label %65

65:                                               ; preds = %62, %30, %22
  ret void
}

declare dso_local i32 @message_fatal(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @message_filename(i8*) #1

declare dso_local i32 @message_error(i32) #1

declare dso_local i32* @io_open_src(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @parse_indexes(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @print_info_robot(%struct.TYPE_8__*, i32*) #1

declare dso_local i64 @message_verbosity_get(...) #1

declare dso_local i32 @print_info_basic(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @print_info_adv(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @update_totals(%struct.TYPE_8__*) #1

declare dso_local i32 @lzma_index_end(i32, i32*) #1

declare dso_local i32 @io_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
