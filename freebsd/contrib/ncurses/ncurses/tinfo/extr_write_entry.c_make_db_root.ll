; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/tinfo/extr_write_entry.c_make_db_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/tinfo/extr_write_entry.c_make_db_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@R_OK = common dso_local global i32 0, align 4
@W_OK = common dso_local global i32 0, align 4
@X_OK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @make_db_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_db_root(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.stat, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i32, i32* @PATH_MAX, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = trunc i64 %8 to i32
  %13 = call i32 @make_db_path(i8* %10, i8* %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %41

15:                                               ; preds = %1
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 @stat(i8* %16, %struct.stat* %6)
  store i32 %17, i32* %3, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 @mkdir(i8* %20, i32 511)
  store i32 %21, i32* %3, align 4
  br label %40

22:                                               ; preds = %15
  %23 = load i8*, i8** %2, align 8
  %24 = load i32, i32* @R_OK, align 4
  %25 = load i32, i32* @W_OK, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @X_OK, align 4
  %28 = or i32 %26, %27
  %29 = call i64 @_nc_access(i8* %23, i32 %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  store i32 -1, i32* %3, align 4
  br label %39

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @S_ISDIR(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store i32 -1, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %32
  br label %39

39:                                               ; preds = %38, %31
  br label %40

40:                                               ; preds = %39, %19
  br label %41

41:                                               ; preds = %40, %1
  %42 = load i32, i32* %3, align 4
  %43 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %43)
  ret i32 %42
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @make_db_path(i8*, i8*, i32) #2

declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @mkdir(i8*, i32) #2

declare dso_local i64 @_nc_access(i8*, i32) #2

declare dso_local i32 @S_ISDIR(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
