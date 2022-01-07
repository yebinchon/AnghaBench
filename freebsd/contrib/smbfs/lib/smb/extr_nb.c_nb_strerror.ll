; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_nb.c_nb_strerror.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_nb.c_nb_strerror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NBERR_ACTIVE = common dso_local global i32 0, align 4
@nb_err_rcode = common dso_local global i8** null, align 8
@NBERR_HOSTNOTFOUND = common dso_local global i32 0, align 4
@NBERR_MAX = common dso_local global i32 0, align 4
@nb_err = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @nb_strerror(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %35

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @NBERR_ACTIVE, align 4
  %10 = icmp sle i32 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = load i8**, i8*** @nb_err_rcode, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8*, i8** %12, i64 %15
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %2, align 8
  br label %35

18:                                               ; preds = %7
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @NBERR_HOSTNOTFOUND, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @NBERR_MAX, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load i8**, i8*** @nb_err, align 8
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @NBERR_HOSTNOTFOUND, align 4
  %30 = sub nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %27, i64 %31
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %2, align 8
  br label %35

34:                                               ; preds = %22, %18
  store i8* null, i8** %2, align 8
  br label %35

35:                                               ; preds = %34, %26, %11, %6
  %36 = load i8*, i8** %2, align 8
  ret i8* %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
