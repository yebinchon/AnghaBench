; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_ctx.c_smb_ctx_setuser.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_ctx.c_smb_ctx_setuser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SMB_MAXUSERNAMELEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"user name '%s' too long\00", align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_ctx_setuser(%struct.smb_ctx* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smb_ctx*, align 8
  %5 = alloca i8*, align 8
  store %struct.smb_ctx* %0, %struct.smb_ctx** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = call i64 @strlen(i8* %6)
  %8 = load i64, i64* @SMB_MAXUSERNAMELEN, align 8
  %9 = icmp sgt i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @smb_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 0, i8* %11)
  %13 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %13, i32* %3, align 4
  br label %21

14:                                               ; preds = %2
  %15 = load %struct.smb_ctx*, %struct.smb_ctx** %4, align 8
  %16 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @nls_str_upper(i32 %18, i8* %19)
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %14, %10
  %22 = load i32, i32* %3, align 4
  ret i32 %22
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
