; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_rcfile.c_rc_getint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_rcfile.c_rc_getint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcfile = type { i32 }
%struct.rcsection = type { i32 }
%struct.rckey = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"invalid int value '%s' for key '%s' in section '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rc_getint(%struct.rcfile* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rcfile*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.rcsection*, align 8
  %11 = alloca %struct.rckey*, align 8
  store %struct.rcfile* %0, %struct.rcfile** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.rcfile*, %struct.rcfile** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call %struct.rcsection* @rc_findsect(%struct.rcfile* %12, i8* %13)
  store %struct.rcsection* %14, %struct.rcsection** %10, align 8
  %15 = load %struct.rcsection*, %struct.rcsection** %10, align 8
  %16 = icmp ne %struct.rcsection* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOENT, align 4
  store i32 %18, i32* %5, align 4
  br label %44

19:                                               ; preds = %4
  %20 = load %struct.rcsection*, %struct.rcsection** %10, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call %struct.rckey* @rc_sect_findkey(%struct.rcsection* %20, i8* %21)
  store %struct.rckey* %22, %struct.rckey** %11, align 8
  %23 = load %struct.rckey*, %struct.rckey** %11, align 8
  %24 = icmp ne %struct.rckey* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @ENOENT, align 4
  store i32 %26, i32* %5, align 4
  br label %44

27:                                               ; preds = %19
  store i32 0, i32* @errno, align 4
  %28 = load %struct.rckey*, %struct.rckey** %11, align 8
  %29 = getelementptr inbounds %struct.rckey, %struct.rckey* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @strtol(i32 %30, i32* null, i32 0)
  %32 = load i32*, i32** %9, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @errno, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %27
  %36 = load %struct.rckey*, %struct.rckey** %11, align 8
  %37 = getelementptr inbounds %struct.rckey, %struct.rckey* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %8, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @warnx(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %38, i8* %39, i8* %40)
  %42 = load i32, i32* @errno, align 4
  store i32 %42, i32* %5, align 4
  br label %44

43:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %43, %35, %25, %17
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local %struct.rcsection* @rc_findsect(%struct.rcfile*, i8*) #1

declare dso_local %struct.rckey* @rc_sect_findkey(%struct.rcsection*, i8*) #1

declare dso_local i32 @strtol(i32, i32*, i32) #1

declare dso_local i32 @warnx(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
