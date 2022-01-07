; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_rcfile.c_rc_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_rcfile.c_rc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcfile = type { i32*, i32 }

@errno = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pf_head = common dso_local global i32 0, align 4
@rf_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rc_open(i8* %0, i8* %1, %struct.rcfile** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.rcfile**, align 8
  %8 = alloca %struct.rcfile*, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.rcfile** %2, %struct.rcfile*** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call %struct.rcfile* @rc_cachelookup(i8* %10)
  store %struct.rcfile* %11, %struct.rcfile** %8, align 8
  %12 = load %struct.rcfile*, %struct.rcfile** %8, align 8
  %13 = icmp ne %struct.rcfile* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.rcfile*, %struct.rcfile** %8, align 8
  %16 = load %struct.rcfile**, %struct.rcfile*** %7, align 8
  store %struct.rcfile* %15, %struct.rcfile** %16, align 8
  store i32 0, i32* %4, align 4
  br label %50

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32* @fopen(i8* %18, i8* %19)
  store i32* %20, i32** %9, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @errno, align 4
  store i32 %24, i32* %4, align 4
  br label %50

25:                                               ; preds = %17
  %26 = call %struct.rcfile* @malloc(i32 16)
  store %struct.rcfile* %26, %struct.rcfile** %8, align 8
  %27 = load %struct.rcfile*, %struct.rcfile** %8, align 8
  %28 = icmp eq %struct.rcfile* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @fclose(i32* %30)
  %32 = load i32, i32* @ENOMEM, align 4
  store i32 %32, i32* %4, align 4
  br label %50

33:                                               ; preds = %25
  %34 = load %struct.rcfile*, %struct.rcfile** %8, align 8
  %35 = call i32 @bzero(%struct.rcfile* %34, i32 16)
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @strdup(i8* %36)
  %38 = load %struct.rcfile*, %struct.rcfile** %8, align 8
  %39 = getelementptr inbounds %struct.rcfile, %struct.rcfile* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = load %struct.rcfile*, %struct.rcfile** %8, align 8
  %42 = getelementptr inbounds %struct.rcfile, %struct.rcfile* %41, i32 0, i32 0
  store i32* %40, i32** %42, align 8
  %43 = load %struct.rcfile*, %struct.rcfile** %8, align 8
  %44 = load i32, i32* @rf_next, align 4
  %45 = call i32 @SLIST_INSERT_HEAD(i32* @pf_head, %struct.rcfile* %43, i32 %44)
  %46 = load %struct.rcfile*, %struct.rcfile** %8, align 8
  %47 = call i32 @rc_parse(%struct.rcfile* %46)
  %48 = load %struct.rcfile*, %struct.rcfile** %8, align 8
  %49 = load %struct.rcfile**, %struct.rcfile*** %7, align 8
  store %struct.rcfile* %48, %struct.rcfile** %49, align 8
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %33, %29, %23, %14
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.rcfile* @rc_cachelookup(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local %struct.rcfile* @malloc(i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @bzero(%struct.rcfile*, i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.rcfile*, i32) #1

declare dso_local i32 @rc_parse(%struct.rcfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
