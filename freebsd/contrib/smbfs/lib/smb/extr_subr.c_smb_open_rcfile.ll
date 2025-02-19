; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_subr.c_smb_open_rcfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_subr.c_smb_open_rcfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s/.nsmbrc\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@smb_rc = common dso_local global i32* null, align 8
@SMB_CFG_FILE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Warning: no cfg file(s) found.\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_open_rcfile() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %5, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %20

8:                                                ; preds = %0
  %9 = load i8*, i8** %2, align 8
  %10 = call i64 @strlen(i8* %9)
  %11 = add nsw i64 %10, 20
  %12 = call i8* @malloc(i64 %11)
  store i8* %12, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @sprintf(i8* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %14)
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @rc_open(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32** @smb_rc)
  store i32 %17, i32* %4, align 4
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @free(i8* %18)
  br label %20

20:                                               ; preds = %8, %0
  %21 = load i32, i32* @SMB_CFG_FILE, align 4
  %22 = call i32 @rc_merge(i32 %21, i32** @smb_rc)
  store i32 %22, i32* %4, align 4
  %23 = load i32*, i32** @smb_rc, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %27 = load i32, i32* @ENOENT, align 4
  store i32 %27, i32* %1, align 4
  br label %29

28:                                               ; preds = %20
  store i32 0, i32* %1, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @rc_open(i8*, i8*, i32**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @rc_merge(i32, i32**) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
