; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/smbutil/extr_dumptree.c_print_vcinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/smbutil/extr_dumptree.c_print_vcinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_vc_info = type { i8*, i8*, i32, i64, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"VC: \\\\%s\\%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"(%s:%s) %o\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@verbose = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"state:    %s\0A\00", align 1
@iod_state = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"flags:    0x%04x %s\0A\00", align 1
@vc_flags = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"usecount: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"dialect:  %d (%s)\0A\00", align 1
@conn_proto = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [14 x i8] c"smode:    %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"caps:     0x%04x %s\0A\00", align 1
@conn_caps = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"maxmux:   %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"maxvcs:   %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smb_vc_info*)* @print_vcinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_vcinfo(%struct.smb_vc_info* %0) #0 {
  %2 = alloca %struct.smb_vc_info*, align 8
  %3 = alloca [200 x i8], align 16
  store %struct.smb_vc_info* %0, %struct.smb_vc_info** %2, align 8
  %4 = load %struct.smb_vc_info*, %struct.smb_vc_info** %2, align 8
  %5 = getelementptr inbounds %struct.smb_vc_info, %struct.smb_vc_info* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = load %struct.smb_vc_info*, %struct.smb_vc_info** %2, align 8
  %8 = getelementptr inbounds %struct.smb_vc_info, %struct.smb_vc_info* %7, i32 0, i32 1
  %9 = load i8*, i8** %8, align 8
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %6, i8* %9)
  %11 = load %struct.smb_vc_info*, %struct.smb_vc_info** %2, align 8
  %12 = getelementptr inbounds %struct.smb_vc_info, %struct.smb_vc_info* %11, i32 0, i32 8
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @user_from_uid(i32 %13, i32 0)
  %15 = load %struct.smb_vc_info*, %struct.smb_vc_info** %2, align 8
  %16 = getelementptr inbounds %struct.smb_vc_info, %struct.smb_vc_info* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 8
  %18 = call i8* @group_from_gid(i32 %17, i32 0)
  %19 = load %struct.smb_vc_info*, %struct.smb_vc_info** %2, align 8
  %20 = getelementptr inbounds %struct.smb_vc_info, %struct.smb_vc_info* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %14, i8* %18, i32 %21)
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i32, i32* @verbose, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  br label %95

27:                                               ; preds = %1
  %28 = load i32*, i32** @iod_state, align 8
  %29 = load %struct.smb_vc_info*, %struct.smb_vc_info** %2, align 8
  %30 = getelementptr inbounds %struct.smb_vc_info, %struct.smb_vc_info* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = call i32 (i32, i8*, i64, ...) @iprintf(i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i64 %34)
  %36 = load %struct.smb_vc_info*, %struct.smb_vc_info** %2, align 8
  %37 = getelementptr inbounds %struct.smb_vc_info, %struct.smb_vc_info* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %41 = load %struct.smb_vc_info*, %struct.smb_vc_info** %2, align 8
  %42 = getelementptr inbounds %struct.smb_vc_info, %struct.smb_vc_info* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @vc_flags, align 4
  %45 = call i32 @smb_printb(i8* %40, i32 %43, i32 %44)
  %46 = call i32 (i32, i8*, i64, ...) @iprintf(i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64 %39, i32 %45)
  %47 = load %struct.smb_vc_info*, %struct.smb_vc_info** %2, align 8
  %48 = getelementptr inbounds %struct.smb_vc_info, %struct.smb_vc_info* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = call i32 (i32, i8*, i64, ...) @iprintf(i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i64 %50)
  %52 = load %struct.smb_vc_info*, %struct.smb_vc_info** %2, align 8
  %53 = getelementptr inbounds %struct.smb_vc_info, %struct.smb_vc_info* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32*, i32** @conn_proto, align 8
  %57 = load %struct.smb_vc_info*, %struct.smb_vc_info** %2, align 8
  %58 = getelementptr inbounds %struct.smb_vc_info, %struct.smb_vc_info* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32, i32* %56, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32, i8*, i64, ...) @iprintf(i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i64 %55, i32 %62)
  %64 = load %struct.smb_vc_info*, %struct.smb_vc_info** %2, align 8
  %65 = getelementptr inbounds %struct.smb_vc_info, %struct.smb_vc_info* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = call i32 (i32, i8*, i64, ...) @iprintf(i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i64 %68)
  %70 = load %struct.smb_vc_info*, %struct.smb_vc_info** %2, align 8
  %71 = getelementptr inbounds %struct.smb_vc_info, %struct.smb_vc_info* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %76 = load %struct.smb_vc_info*, %struct.smb_vc_info** %2, align 8
  %77 = getelementptr inbounds %struct.smb_vc_info, %struct.smb_vc_info* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @conn_caps, align 4
  %81 = call i32 @smb_printb(i8* %75, i32 %79, i32 %80)
  %82 = call i32 (i32, i8*, i64, ...) @iprintf(i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i64 %74, i32 %81)
  %83 = load %struct.smb_vc_info*, %struct.smb_vc_info** %2, align 8
  %84 = getelementptr inbounds %struct.smb_vc_info, %struct.smb_vc_info* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = call i32 (i32, i8*, i64, ...) @iprintf(i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i64 %87)
  %89 = load %struct.smb_vc_info*, %struct.smb_vc_info** %2, align 8
  %90 = getelementptr inbounds %struct.smb_vc_info, %struct.smb_vc_info* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = call i32 (i32, i8*, i64, ...) @iprintf(i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i64 %93)
  br label %95

95:                                               ; preds = %27, %26
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @user_from_uid(i32, i32) #1

declare dso_local i8* @group_from_gid(i32, i32) #1

declare dso_local i32 @iprintf(i32, i8*, i64, ...) #1

declare dso_local i32 @smb_printb(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
