; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/tinfo/extr_write_entry.c_write_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/tinfo/extr_write_entry.c_write_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_ENTRY_SIZE = common dso_local global i32 0, align 4
@W_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"can't open %s/%s\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Created %s\00", align 1
@ERR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"error writing %s/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @write_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_file(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32, i32* @MAX_ENTRY_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = trunc i64 %11 to i32
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load i8*, i8** %3, align 8
  %16 = load i32, i32* @W_OK, align 4
  %17 = call i64 @_nc_access(i8* %15, i32 %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i8*, i8** %3, align 8
  %21 = call i32* @fopen(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %23

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %22, %19
  %24 = phi i32* [ %21, %19 ], [ null, %22 ]
  store i32* %24, i32** %9, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @perror(i8* %28)
  %30 = call i32 @_nc_tic_dir(i32 0)
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @_nc_syserr_abort(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %30, i8* %31)
  br label %33

33:                                               ; preds = %27, %23
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @DEBUG(i32 1, i8* %34)
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i64 @write_object(i32* %36, i8* %13, i32* %8, i32 %37)
  %39 = load i64, i64* @ERR, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %48, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* %8, align 4
  %43 = zext i32 %42 to i64
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @fwrite(i8* %13, i32 1, i64 %43, i32* %44)
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %41, %33
  %49 = call i32 @_nc_tic_dir(i32 0)
  %50 = load i8*, i8** %3, align 8
  %51 = call i32 @_nc_syserr_abort(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %49, i8* %50)
  br label %52

52:                                               ; preds = %48, %41
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @fclose(i32* %53)
  %55 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %55)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @_nc_access(i8*, i32) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @_nc_syserr_abort(i8*, i32, i8*) #2

declare dso_local i32 @_nc_tic_dir(i32) #2

declare dso_local i32 @DEBUG(i32, i8*) #2

declare dso_local i64 @write_object(i32*, i8*, i32*, i32) #2

declare dso_local i32 @fwrite(i8*, i32, i64, i32*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
