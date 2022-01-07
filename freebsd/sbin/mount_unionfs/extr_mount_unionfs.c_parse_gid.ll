; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/mount_unionfs/extr_mount_unionfs.c_parse_gid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/mount_unionfs/extr_mount_unionfs.c_parse_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@EX_NOUSER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"unknown group id: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64)* @parse_gid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_gid(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.group*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call %struct.group* @getgrnam(i8* %9)
  store %struct.group* %10, %struct.group** %7, align 8
  %11 = icmp ne %struct.group* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.group*, %struct.group** %7, align 8
  %16 = getelementptr inbounds %struct.group, %struct.group* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @snprintf(i8* %13, i64 %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %37

19:                                               ; preds = %3
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @strtol(i8* %20, i8** %8, i32 10)
  %22 = load i8*, i8** %8, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load i32, i32* @EX_NOUSER, align 4
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @errx(i32 %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  %30 = call i32 (...) @usage()
  br label %36

31:                                               ; preds = %19
  %32 = load i8*, i8** %5, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @strncpy(i8* %32, i8* %33, i64 %34)
  br label %36

36:                                               ; preds = %31, %26
  br label %37

37:                                               ; preds = %36, %12
  ret void
}

declare dso_local %struct.group* @getgrnam(i8*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i32) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
