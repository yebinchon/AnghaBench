; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linsysfs/extr_linsysfs.c_get_full_pfs_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linsysfs/extr_linsysfs.c_get_full_pfs_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfs_node = type { i8*, %struct.pfs_node* }

@MAXPATHLEN = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.pfs_node*)* @get_full_pfs_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_full_pfs_path(%struct.pfs_node* %0) #0 {
  %2 = alloca %struct.pfs_node*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store %struct.pfs_node* %0, %struct.pfs_node** %2, align 8
  %5 = load i32, i32* @MAXPATHLEN, align 4
  %6 = load i32, i32* @M_TEMP, align 4
  %7 = load i32, i32* @M_WAITOK, align 4
  %8 = call i8* @malloc(i32 %5, i32 %6, i32 %7)
  store i8* %8, i8** %3, align 8
  %9 = load i32, i32* @MAXPATHLEN, align 4
  %10 = load i32, i32* @M_TEMP, align 4
  %11 = load i32, i32* @M_WAITOK, align 4
  %12 = call i8* @malloc(i32 %9, i32 %10, i32 %11)
  store i8* %12, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  store i8 0, i8* %14, align 1
  br label %15

15:                                               ; preds = %30, %1
  %16 = load i8*, i8** %3, align 8
  %17 = load i32, i32* @MAXPATHLEN, align 4
  %18 = load %struct.pfs_node*, %struct.pfs_node** %2, align 8
  %19 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @snprintf(i8* %16, i32 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %20, i8* %21)
  %23 = load i8*, i8** %4, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = load i32, i32* @MAXPATHLEN, align 4
  %26 = call i32 @strlcpy(i8* %23, i8* %24, i32 %25)
  %27 = load %struct.pfs_node*, %struct.pfs_node** %2, align 8
  %28 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %27, i32 0, i32 1
  %29 = load %struct.pfs_node*, %struct.pfs_node** %28, align 8
  store %struct.pfs_node* %29, %struct.pfs_node** %2, align 8
  br label %30

30:                                               ; preds = %15
  %31 = load %struct.pfs_node*, %struct.pfs_node** %2, align 8
  %32 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %31, i32 0, i32 1
  %33 = load %struct.pfs_node*, %struct.pfs_node** %32, align 8
  %34 = icmp ne %struct.pfs_node* %33, null
  br i1 %34, label %15, label %35

35:                                               ; preds = %30
  %36 = load i8*, i8** %4, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @strlen(i8* %37)
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %36, i64 %40
  store i8 0, i8* %41, align 1
  %42 = load i8*, i8** %3, align 8
  %43 = load i32, i32* @M_TEMP, align 4
  %44 = call i32 @free(i8* %42, i32 %43)
  %45 = load i8*, i8** %4, align 8
  ret i8* %45
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
