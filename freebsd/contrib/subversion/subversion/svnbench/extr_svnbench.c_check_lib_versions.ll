; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnbench/extr_svnbench.c_check_lib_versions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnbench/extr_svnbench.c_check_lib_versions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32* }

@check_lib_versions.checklist = internal constant [6 x %struct.TYPE_3__] [%struct.TYPE_3__ { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32* inttoptr (i64 129 to i32*) }, %struct.TYPE_3__ { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32* inttoptr (i64 132 to i32*) }, %struct.TYPE_3__ { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32* inttoptr (i64 128 to i32*) }, %struct.TYPE_3__ { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32* inttoptr (i64 130 to i32*) }, %struct.TYPE_3__ { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i32* inttoptr (i64 131 to i32*) }, %struct.TYPE_3__ zeroinitializer], align 16
@.str = private unnamed_addr constant [9 x i8] c"svn_subr\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"svn_client\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"svn_wc\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"svn_ra\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"svn_delta\00", align 1
@my_version = common dso_local global i32 0, align 4
@svn_ver_equal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @check_lib_versions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @check_lib_versions() #0 {
  %1 = load i32, i32* @my_version, align 4
  %2 = call i32 @SVN_VERSION_DEFINE(i32 %1)
  %3 = load i32, i32* @svn_ver_equal, align 4
  %4 = call i32* @svn_ver_check_list2(i32* @my_version, %struct.TYPE_3__* getelementptr inbounds ([6 x %struct.TYPE_3__], [6 x %struct.TYPE_3__]* @check_lib_versions.checklist, i64 0, i64 0), i32 %3)
  ret i32* %4
}

declare dso_local i32 @SVN_VERSION_DEFINE(i32) #1

declare dso_local i32* @svn_ver_check_list2(i32*, %struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
