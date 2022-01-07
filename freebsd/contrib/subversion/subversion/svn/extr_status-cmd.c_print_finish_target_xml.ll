; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_status-cmd.c_print_finish_target_xml.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_status-cmd.c_print_finish_target_xml.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@svn_xml_self_closing = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"against\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"revision\00", align 1
@SVN_VA_NULL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32*)* @print_finish_target_xml to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @print_finish_target_xml(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call %struct.TYPE_5__* @svn_stringbuf_create_empty(i32* %7)
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %5, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @SVN_IS_VALID_REVNUM(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i8* @apr_psprintf(i32* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %14)
  store i8* %15, i8** %6, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* @svn_xml_self_closing, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* @SVN_VA_NULL, align 4
  %20 = call i32 @svn_xml_make_open_tag(%struct.TYPE_5__** %5, i32* %16, i32 %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %18, i32 %19)
  br label %21

21:                                               ; preds = %12, %2
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @svn_xml_make_close_tag(%struct.TYPE_5__** %5, i32* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @stdout, align 4
  %28 = call i32* @svn_cl__error_checked_fputs(i32 %26, i32 %27)
  ret i32* %28
}

declare dso_local %struct.TYPE_5__* @svn_stringbuf_create_empty(i32*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i8* @apr_psprintf(i32*, i8*, i32) #1

declare dso_local i32 @svn_xml_make_open_tag(%struct.TYPE_5__**, i32*, i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @svn_xml_make_close_tag(%struct.TYPE_5__**, i32*, i8*) #1

declare dso_local i32* @svn_cl__error_checked_fputs(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
