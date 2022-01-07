; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/kgdb/extr_main.c_verify_remote.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/kgdb/extr_main.c_verify_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@remote = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"/dev/%s\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"%s: not a special file, FIFO or socket\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @verify_remote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify_remote() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.stat, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @PATH_MAX, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %1, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %2, align 8
  %9 = load i8*, i8** @remote, align 8
  %10 = call i64 @stat(i8* %9, %struct.stat* %3)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %0
  %13 = trunc i64 %6 to i32
  %14 = load i8*, i8** @remote, align 8
  %15 = call i32 @snprintf(i8* %8, i32 %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = call i64 @stat(i8* %8, %struct.stat* %3)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 1, i32* %4, align 4
  br label %37

19:                                               ; preds = %12
  %20 = load i8*, i8** @remote, align 8
  %21 = call i32 @free(i8* %20)
  %22 = call i8* @strdup(i8* %8)
  store i8* %22, i8** @remote, align 8
  br label %23

23:                                               ; preds = %19, %0
  %24 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @S_ISCHR(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @S_ISFIFO(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i8*, i8** @remote, align 8
  %35 = call i32 @errx(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %33, %28, %23
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %18
  %38 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %38)
  %39 = load i32, i32* %4, align 4
  switch i32 %39, label %41 [
    i32 0, label %40
    i32 1, label %40
  ]

40:                                               ; preds = %37, %37
  ret void

41:                                               ; preds = %37
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @S_ISCHR(i32) #2

declare dso_local i32 @S_ISFIFO(i32) #2

declare dso_local i32 @errx(i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
