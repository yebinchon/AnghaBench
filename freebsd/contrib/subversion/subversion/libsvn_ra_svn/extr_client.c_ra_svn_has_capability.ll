; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_ra_svn_has_capability.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_client.c_ra_svn_has_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ra_svn_has_capability.capabilities = internal global [11 x [2 x i8*]] [[2 x i8*] [i8* inttoptr (i64 145 to i8*), i8* inttoptr (i64 135 to i8*)], [2 x i8*] [i8* inttoptr (i64 139 to i8*), i8* inttoptr (i64 129 to i8*)], [2 x i8*] [i8* inttoptr (i64 140 to i8*), i8* inttoptr (i64 130 to i8*)], [2 x i8*] [i8* inttoptr (i64 138 to i8*), i8* inttoptr (i64 128 to i8*)], [2 x i8*] [i8* inttoptr (i64 146 to i8*), i8* inttoptr (i64 136 to i8*)], [2 x i8*] [i8* inttoptr (i64 147 to i8*), i8* inttoptr (i64 137 to i8*)], [2 x i8*] [i8* inttoptr (i64 142 to i8*), i8* inttoptr (i64 132 to i8*)], [2 x i8*] [i8* inttoptr (i64 144 to i8*), i8* inttoptr (i64 134 to i8*)], [2 x i8*] [i8* inttoptr (i64 143 to i8*), i8* inttoptr (i64 133 to i8*)], [2 x i8*] [i8* inttoptr (i64 141 to i8*), i8* inttoptr (i64 131 to i8*)], [2 x i8*] zeroinitializer], align 16
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_ERR_UNKNOWN_CAPABILITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Don't know anything about capability '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*, i32*, i8*, i32*)* @ra_svn_has_capability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ra_svn_has_capability(%struct.TYPE_5__* %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %10, align 8
  %15 = load i32, i32* @FALSE, align 4
  %16 = load i32*, i32** %7, align 8
  store i32 %15, i32* %16, align 4
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %46, %4
  %18 = load i32, i32* %11, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [11 x [2 x i8*]], [11 x [2 x i8*]]* @ra_svn_has_capability.capabilities, i64 0, i64 %19
  %21 = getelementptr inbounds [2 x i8*], [2 x i8*]* %20, i64 0, i64 0
  %22 = load i8*, i8** %21, align 16
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %49

24:                                               ; preds = %17
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [11 x [2 x i8*]], [11 x [2 x i8*]]* @ra_svn_has_capability.capabilities, i64 0, i64 %27
  %29 = getelementptr inbounds [2 x i8*], [2 x i8*]* %28, i64 0, i64 0
  %30 = load i8*, i8** %29, align 16
  %31 = call i64 @strcmp(i8* %25, i8* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %24
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [11 x [2 x i8*]], [11 x [2 x i8*]]* @ra_svn_has_capability.capabilities, i64 0, i64 %38
  %40 = getelementptr inbounds [2 x i8*], [2 x i8*]* %39, i64 0, i64 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @svn_ra_svn_has_capability(i32 %36, i8* %41)
  %43 = load i32*, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %44, i32** %5, align 8
  br label %54

45:                                               ; preds = %24
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  br label %17

49:                                               ; preds = %17
  %50 = load i32, i32* @SVN_ERR_UNKNOWN_CAPABILITY, align 4
  %51 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %52 = load i8*, i8** %8, align 8
  %53 = call i32* @svn_error_createf(i32 %50, i32* null, i32 %51, i8* %52)
  store i32* %53, i32** %5, align 8
  br label %54

54:                                               ; preds = %49, %33
  %55 = load i32*, i32** %5, align 8
  ret i32* %55
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @svn_ra_svn_has_capability(i32, i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
