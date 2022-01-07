; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_ctx.c_smb_ctx_setshare.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_ctx.c_smb_ctx_setshare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_ctx = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@SMB_MAXSHARENAMELEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"share name '%s' too long\00", align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4
@SMBL_SHARE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_ctx_setshare(%struct.smb_ctx* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smb_ctx*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.smb_ctx* %0, %struct.smb_ctx** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i8*, i8** %6, align 8
  %9 = call i64 @strlen(i8* %8)
  %10 = load i64, i64* @SMB_MAXSHARENAMELEN, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @smb_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 0, i8* %13)
  %15 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %15, i32* %4, align 4
  br label %37

16:                                               ; preds = %3
  %17 = load %struct.smb_ctx*, %struct.smb_ctx** %5, align 8
  %18 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @nls_str_upper(i32 %20, i8* %21)
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %16
  %29 = load i32, i32* @SMBL_SHARE, align 4
  %30 = load %struct.smb_ctx*, %struct.smb_ctx** %5, align 8
  %31 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %28, %16
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.smb_ctx*, %struct.smb_ctx** %5, align 8
  %35 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %32, %12
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @smb_error(i8*, i32, i8*) #1

declare dso_local i32 @nls_str_upper(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
