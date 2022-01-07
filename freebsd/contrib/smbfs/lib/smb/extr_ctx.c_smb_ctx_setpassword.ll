; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_ctx.c_smb_ctx_setpassword.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_ctx.c_smb_ctx_setpassword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_ctx = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }

@EINVAL = common dso_local global i32 0, align 4
@SMB_MAXPASSWORDLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"password too long\00", align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"$$1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_ctx_setpassword(%struct.smb_ctx* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smb_ctx*, align 8
  %5 = alloca i8*, align 8
  store %struct.smb_ctx* %0, %struct.smb_ctx** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @EINVAL, align 4
  store i32 %9, i32* %3, align 4
  br label %46

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = call i64 @strlen(i8* %11)
  %13 = load i64, i64* @SMB_MAXPASSWORDLEN, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = call i32 @smb_error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 0)
  %17 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %17, i32* %3, align 4
  br label %46

18:                                               ; preds = %10
  %19 = load i8*, i8** %5, align 8
  %20 = call i64 @strncmp(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load %struct.smb_ctx*, %struct.smb_ctx** %4, align 8
  %24 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @smb_simpledecrypt(i8* %26, i8* %27)
  br label %36

29:                                               ; preds = %18
  %30 = load %struct.smb_ctx*, %struct.smb_ctx** %4, align 8
  %31 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @strcpy(i8* %33, i8* %34)
  br label %36

36:                                               ; preds = %29, %22
  %37 = load %struct.smb_ctx*, %struct.smb_ctx** %4, align 8
  %38 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.smb_ctx*, %struct.smb_ctx** %4, align 8
  %42 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @strcpy(i8* %40, i8* %44)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %36, %15, %8
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @smb_error(i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @smb_simpledecrypt(i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
