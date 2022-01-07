; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/smbutil/extr_dumptree.c_print_shareinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/smbutil/extr_dumptree.c_print_shareinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_share_info = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"Share:    %s\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"(%s:%s) %o\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@verbose = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"flags:    0x%04x %s\0A\00", align 1
@ss_flags = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"usecount: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smb_share_info*)* @print_shareinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_shareinfo(%struct.smb_share_info* %0) #0 {
  %2 = alloca %struct.smb_share_info*, align 8
  %3 = alloca [200 x i8], align 16
  store %struct.smb_share_info* %0, %struct.smb_share_info** %2, align 8
  %4 = load %struct.smb_share_info*, %struct.smb_share_info** %2, align 8
  %5 = getelementptr inbounds %struct.smb_share_info, %struct.smb_share_info* %4, i32 0, i32 5
  %6 = load i32, i32* %5, align 4
  %7 = call i32 (i32, i8*, i32, ...) @iprintf(i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.smb_share_info*, %struct.smb_share_info** %2, align 8
  %9 = getelementptr inbounds %struct.smb_share_info, %struct.smb_share_info* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = call i8* @user_from_uid(i32 %10, i32 0)
  %12 = load %struct.smb_share_info*, %struct.smb_share_info** %2, align 8
  %13 = getelementptr inbounds %struct.smb_share_info, %struct.smb_share_info* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @group_from_gid(i32 %14, i32 0)
  %16 = load %struct.smb_share_info*, %struct.smb_share_info** %2, align 8
  %17 = getelementptr inbounds %struct.smb_share_info, %struct.smb_share_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %11, i8* %15, i32 %18)
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %21 = load i32, i32* @verbose, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %39

24:                                               ; preds = %1
  %25 = load %struct.smb_share_info*, %struct.smb_share_info** %2, align 8
  %26 = getelementptr inbounds %struct.smb_share_info, %struct.smb_share_info* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %29 = load %struct.smb_share_info*, %struct.smb_share_info** %2, align 8
  %30 = getelementptr inbounds %struct.smb_share_info, %struct.smb_share_info* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ss_flags, align 4
  %33 = call i32 @smb_printb(i8* %28, i32 %31, i32 %32)
  %34 = call i32 (i32, i8*, i32, ...) @iprintf(i32 8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %27, i32 %33)
  %35 = load %struct.smb_share_info*, %struct.smb_share_info** %2, align 8
  %36 = getelementptr inbounds %struct.smb_share_info, %struct.smb_share_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32, i8*, i32, ...) @iprintf(i32 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %24, %23
  ret void
}

declare dso_local i32 @iprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @user_from_uid(i32, i32) #1

declare dso_local i8* @group_from_gid(i32, i32) #1

declare dso_local i32 @smb_printb(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
