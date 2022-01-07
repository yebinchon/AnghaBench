; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/smbutil/extr_dumptree.c_cmd_dumptree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/smbutil/extr_dumptree.c_cmd_dumptree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_vc_info = type { i32 }
%struct.smb_share_info = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"SMB connections:\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"None\0A\00", align 1
@SMB_INFO_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"Out of sync\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EX_OSERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_dumptree(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %10 = call i8* (...) @smb_dumptree()
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %51

15:                                               ; preds = %2
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %7, align 8
  br label %17

17:                                               ; preds = %46, %15
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %8, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SMB_INFO_NONE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %47

25:                                               ; preds = %17
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %42 [
    i32 128, label %28
    i32 129, label %35
  ]

28:                                               ; preds = %25
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @print_vcinfo(i8* %29)
  %31 = load i8*, i8** %6, align 8
  %32 = bitcast i8* %31 to %struct.smb_vc_info*
  %33 = getelementptr inbounds %struct.smb_vc_info, %struct.smb_vc_info* %32, i64 1
  %34 = bitcast %struct.smb_vc_info* %33 to i8*
  store i8* %34, i8** %6, align 8
  br label %46

35:                                               ; preds = %25
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @print_shareinfo(i8* %36)
  %38 = load i8*, i8** %6, align 8
  %39 = bitcast i8* %38 to %struct.smb_share_info*
  %40 = getelementptr inbounds %struct.smb_share_info, %struct.smb_share_info* %39, i64 1
  %41 = bitcast %struct.smb_share_info* %40 to i8*
  store i8* %41, i8** %6, align 8
  br label %46

42:                                               ; preds = %25
  %43 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @free(i8* %44)
  store i32 1, i32* %3, align 4
  br label %51

46:                                               ; preds = %35, %28
  br label %17

47:                                               ; preds = %24
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @free(i8* %48)
  %50 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %47, %42, %13
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i8* @smb_dumptree(...) #1

declare dso_local i32 @print_vcinfo(i8*) #1

declare dso_local i32 @print_shareinfo(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
