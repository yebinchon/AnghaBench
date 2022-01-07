; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_ctx.c_smb_ctx_setsrvaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_ctx.c_smb_ctx_setsrvaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_ctx = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_ctx_setsrvaddr(%struct.smb_ctx* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smb_ctx*, align 8
  %5 = alloca i8*, align 8
  store %struct.smb_ctx* %0, %struct.smb_ctx** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = load i8*, i8** %5, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %8, %2
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %3, align 4
  br label %35

16:                                               ; preds = %8
  %17 = load %struct.smb_ctx*, %struct.smb_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.smb_ctx*, %struct.smb_ctx** %4, align 8
  %23 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @free(i32* %24)
  br label %26

26:                                               ; preds = %21, %16
  %27 = load i8*, i8** %5, align 8
  %28 = call i32* @strdup(i8* %27)
  %29 = load %struct.smb_ctx*, %struct.smb_ctx** %4, align 8
  %30 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %29, i32 0, i32 0
  store i32* %28, i32** %30, align 8
  %31 = icmp eq i32* %28, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOMEM, align 4
  store i32 %33, i32* %3, align 4
  br label %35

34:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %32, %14
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @free(i32*) #1

declare dso_local i32* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
