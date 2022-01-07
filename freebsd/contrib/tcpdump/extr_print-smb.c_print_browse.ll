; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-smb.c_print_browse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-smb.c_print_browse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"BROWSE PACKET\0A|Param \00", align 1
@unicodestr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [196 x i8] c"BROWSE PACKET:\0AType=[B] (LocalMasterAnnouncement)\0AUpdateCount=[w]\0ARes1=[B]\0AAnnounceInterval=[d]\0AName=[n2]\0AMajorVersion=[B]\0AMinorVersion=[B]\0AServerType=[W]\0AElectionVersion=[w]\0ABrowserConstant=[w]\0A\00", align 1
@.str.2 = private unnamed_addr constant [189 x i8] c"BROWSE PACKET:\0AType=[B] (HostAnnouncement)\0AUpdateCount=[w]\0ARes1=[B]\0AAnnounceInterval=[d]\0AName=[n2]\0AMajorVersion=[B]\0AMinorVersion=[B]\0AServerType=[W]\0AElectionVersion=[w]\0ABrowserConstant=[w]\0A\00", align 1
@.str.3 = private unnamed_addr constant [77 x i8] c"BROWSE PACKET:\0AType=[B] (AnnouncementRequest)\0AFlags=[B]\0AReplySystemName=[S]\0A\00", align 1
@.str.4 = private unnamed_addr constant [188 x i8] c"BROWSE PACKET:\0AType=[B] (WorkgroupAnnouncement)\0AUpdateCount=[w]\0ARes1=[B]\0AAnnounceInterval=[d]\0AName=[n2]\0AMajorVersion=[B]\0AMinorVersion=[B]\0AServerType=[W]\0ACommentPointer=[W]\0AServerName=[S]\0A\00", align 1
@.str.5 = private unnamed_addr constant [106 x i8] c"BROWSE PACKET:\0AType=[B] (ElectionFrame)\0AElectionVersion=[B]\0AOSSummary=[W]\0AUptime=[(W, W)]\0AServerName=[S]\0A\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"BROWSE PACKET:\0AType=[B] (BecomeBackupBrowser)\0AName=[S]\0A\00", align 1
@.str.7 = private unnamed_addr constant [66 x i8] c"BROWSE PACKET:\0AType=[B] (GetBackupList)\0AListCount?=[B]\0AToken=[W]\0A\00", align 1
@.str.8 = private unnamed_addr constant [83 x i8] c"BROWSE PACKET:\0AType=[B] (BackupListResponse)\0AServerCount?=[B]\0AToken=[W]\0A*Name=[S]\0A\00", align 1
@.str.9 = private unnamed_addr constant [61 x i8] c"BROWSE PACKET:\0AType=[B] (MasterAnnouncement)\0AMasterName=[S]\0A\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"BROWSE PACKET:\0AType=[B] (ResetBrowser)\0AOptions=[B]\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"Unknown Browser Frame \00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32*, i32)* @print_browse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_browse(i32* %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i32*, i32** %9, align 8
  %14 = load i32, i32* %10, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  store i32* %16, i32** %11, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ND_TCHECK(i32 %19)
  %21 = load i32*, i32** %9, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* @unicodestr, align 4
  %31 = call i32* @smb_fdata(i32* %24, i32* %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* %29, i32 %30)
  %32 = load i32, i32* %12, align 4
  switch i32 %32, label %93 [
    i32 15, label %33
    i32 1, label %39
    i32 2, label %45
    i32 12, label %51
    i32 8, label %57
    i32 11, label %63
    i32 9, label %69
    i32 10, label %75
    i32 13, label %81
    i32 14, label %87
  ]

33:                                               ; preds = %5
  %34 = load i32*, i32** %6, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = load i32, i32* @unicodestr, align 4
  %38 = call i32* @smb_fdata(i32* %34, i32* %35, i8* getelementptr inbounds ([196 x i8], [196 x i8]* @.str.1, i64 0, i64 0), i32* %36, i32 %37)
  store i32* %38, i32** %9, align 8
  br label %99

39:                                               ; preds = %5
  %40 = load i32*, i32** %6, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = load i32, i32* @unicodestr, align 4
  %44 = call i32* @smb_fdata(i32* %40, i32* %41, i8* getelementptr inbounds ([189 x i8], [189 x i8]* @.str.2, i64 0, i64 0), i32* %42, i32 %43)
  store i32* %44, i32** %9, align 8
  br label %99

45:                                               ; preds = %5
  %46 = load i32*, i32** %6, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* @unicodestr, align 4
  %50 = call i32* @smb_fdata(i32* %46, i32* %47, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.3, i64 0, i64 0), i32* %48, i32 %49)
  store i32* %50, i32** %9, align 8
  br label %99

51:                                               ; preds = %5
  %52 = load i32*, i32** %6, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = load i32, i32* @unicodestr, align 4
  %56 = call i32* @smb_fdata(i32* %52, i32* %53, i8* getelementptr inbounds ([188 x i8], [188 x i8]* @.str.4, i64 0, i64 0), i32* %54, i32 %55)
  store i32* %56, i32** %9, align 8
  br label %99

57:                                               ; preds = %5
  %58 = load i32*, i32** %6, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = load i32, i32* @unicodestr, align 4
  %62 = call i32* @smb_fdata(i32* %58, i32* %59, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.5, i64 0, i64 0), i32* %60, i32 %61)
  store i32* %62, i32** %9, align 8
  br label %99

63:                                               ; preds = %5
  %64 = load i32*, i32** %6, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = load i32, i32* @unicodestr, align 4
  %68 = call i32* @smb_fdata(i32* %64, i32* %65, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0), i32* %66, i32 %67)
  store i32* %68, i32** %9, align 8
  br label %99

69:                                               ; preds = %5
  %70 = load i32*, i32** %6, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = load i32*, i32** %11, align 8
  %73 = load i32, i32* @unicodestr, align 4
  %74 = call i32* @smb_fdata(i32* %70, i32* %71, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.7, i64 0, i64 0), i32* %72, i32 %73)
  store i32* %74, i32** %9, align 8
  br label %99

75:                                               ; preds = %5
  %76 = load i32*, i32** %6, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = load i32, i32* @unicodestr, align 4
  %80 = call i32* @smb_fdata(i32* %76, i32* %77, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.8, i64 0, i64 0), i32* %78, i32 %79)
  store i32* %80, i32** %9, align 8
  br label %99

81:                                               ; preds = %5
  %82 = load i32*, i32** %6, align 8
  %83 = load i32*, i32** %9, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = load i32, i32* @unicodestr, align 4
  %86 = call i32* @smb_fdata(i32* %82, i32* %83, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.9, i64 0, i64 0), i32* %84, i32 %85)
  store i32* %86, i32** %9, align 8
  br label %99

87:                                               ; preds = %5
  %88 = load i32*, i32** %6, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = load i32*, i32** %11, align 8
  %91 = load i32, i32* @unicodestr, align 4
  %92 = call i32* @smb_fdata(i32* %88, i32* %89, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0), i32* %90, i32 %91)
  store i32* %92, i32** %9, align 8
  br label %99

93:                                               ; preds = %5
  %94 = load i32*, i32** %6, align 8
  %95 = load i32*, i32** %9, align 8
  %96 = load i32*, i32** %11, align 8
  %97 = load i32, i32* @unicodestr, align 4
  %98 = call i32* @smb_fdata(i32* %94, i32* %95, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32* %96, i32 %97)
  store i32* %98, i32** %9, align 8
  br label %99

99:                                               ; preds = %93, %87, %81, %75, %69, %63, %57, %51, %45, %39, %33
  br label %106

100:                                              ; No predecessors!
  %101 = load i32*, i32** %6, align 8
  %102 = load i32, i32* @tstr, align 4
  %103 = sext i32 %102 to i64
  %104 = inttoptr i64 %103 to i32*
  %105 = call i32 @ND_PRINT(i32* %104)
  br label %106

106:                                              ; preds = %100, %99
  ret void
}

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32* @smb_fdata(i32*, i32*, i8*, i32*, i32) #1

declare dso_local i32 @ND_PRINT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
