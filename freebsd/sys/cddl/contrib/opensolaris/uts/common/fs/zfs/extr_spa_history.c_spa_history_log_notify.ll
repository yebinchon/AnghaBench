; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa_history.c_spa_history_log_notify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa_history.c_spa_history_log_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZPOOL_HIST_CMD = common dso_local global i32 0, align 4
@ZFS_EV_HIST_CMD = common dso_local global i32 0, align 4
@ZPOOL_HIST_INT_NAME = common dso_local global i32 0, align 4
@ZFS_EV_HIST_INT_NAME = common dso_local global i32 0, align 4
@ZPOOL_HIST_ZONE = common dso_local global i32 0, align 4
@ZFS_EV_HIST_ZONE = common dso_local global i32 0, align 4
@ZPOOL_HIST_HOST = common dso_local global i32 0, align 4
@ZFS_EV_HIST_HOST = common dso_local global i32 0, align 4
@ZPOOL_HIST_DSNAME = common dso_local global i32 0, align 4
@ZFS_EV_HIST_DSNAME = common dso_local global i32 0, align 4
@ZPOOL_HIST_INT_STR = common dso_local global i32 0, align 4
@ZFS_EV_HIST_INT_STR = common dso_local global i32 0, align 4
@ZPOOL_HIST_IOCTL = common dso_local global i32 0, align 4
@ZFS_EV_HIST_IOCTL = common dso_local global i32 0, align 4
@ZPOOL_HIST_DSID = common dso_local global i32 0, align 4
@ZFS_EV_HIST_DSID = common dso_local global i32 0, align 4
@ZPOOL_HIST_TXG = common dso_local global i32 0, align 4
@ZFS_EV_HIST_TXG = common dso_local global i32 0, align 4
@ZPOOL_HIST_TIME = common dso_local global i32 0, align 4
@ZFS_EV_HIST_TIME = common dso_local global i32 0, align 4
@ZPOOL_HIST_WHO = common dso_local global i32 0, align 4
@ZFS_EV_HIST_WHO = common dso_local global i32 0, align 4
@ZPOOL_HIST_INT_EVENT = common dso_local global i32 0, align 4
@ZFS_EV_HIST_INT_EVENT = common dso_local global i32 0, align 4
@ESC_ZFS_HISTORY_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @spa_history_log_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spa_history_log_notify(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = call i32* (...) @fnvlist_alloc()
  store i32* %8, i32** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* @ZPOOL_HIST_CMD, align 4
  %11 = call i64 @nvlist_lookup_string(i32* %9, i32 %10, i8** %7)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* @ZFS_EV_HIST_CMD, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @fnvlist_add_string(i32* %14, i32 %15, i8* %16)
  br label %18

18:                                               ; preds = %13, %2
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* @ZPOOL_HIST_INT_NAME, align 4
  %21 = call i64 @nvlist_lookup_string(i32* %19, i32 %20, i8** %7)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* @ZFS_EV_HIST_INT_NAME, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @fnvlist_add_string(i32* %24, i32 %25, i8* %26)
  br label %28

28:                                               ; preds = %23, %18
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @ZPOOL_HIST_ZONE, align 4
  %31 = call i64 @nvlist_lookup_string(i32* %29, i32 %30, i8** %7)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @ZFS_EV_HIST_ZONE, align 4
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @fnvlist_add_string(i32* %34, i32 %35, i8* %36)
  br label %38

38:                                               ; preds = %33, %28
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* @ZPOOL_HIST_HOST, align 4
  %41 = call i64 @nvlist_lookup_string(i32* %39, i32 %40, i8** %7)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* @ZFS_EV_HIST_HOST, align 4
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @fnvlist_add_string(i32* %44, i32 %45, i8* %46)
  br label %48

48:                                               ; preds = %43, %38
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* @ZPOOL_HIST_DSNAME, align 4
  %51 = call i64 @nvlist_lookup_string(i32* %49, i32 %50, i8** %7)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* @ZFS_EV_HIST_DSNAME, align 4
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @fnvlist_add_string(i32* %54, i32 %55, i8* %56)
  br label %58

58:                                               ; preds = %53, %48
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* @ZPOOL_HIST_INT_STR, align 4
  %61 = call i64 @nvlist_lookup_string(i32* %59, i32 %60, i8** %7)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* @ZFS_EV_HIST_INT_STR, align 4
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @fnvlist_add_string(i32* %64, i32 %65, i8* %66)
  br label %68

68:                                               ; preds = %63, %58
  %69 = load i32*, i32** %4, align 8
  %70 = load i32, i32* @ZPOOL_HIST_IOCTL, align 4
  %71 = call i64 @nvlist_lookup_string(i32* %69, i32 %70, i8** %7)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* @ZFS_EV_HIST_IOCTL, align 4
  %76 = load i8*, i8** %7, align 8
  %77 = call i32 @fnvlist_add_string(i32* %74, i32 %75, i8* %76)
  br label %78

78:                                               ; preds = %73, %68
  %79 = load i32*, i32** %4, align 8
  %80 = load i32, i32* @ZPOOL_HIST_INT_NAME, align 4
  %81 = call i64 @nvlist_lookup_string(i32* %79, i32 %80, i8** %7)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* @ZFS_EV_HIST_INT_NAME, align 4
  %86 = load i8*, i8** %7, align 8
  %87 = call i32 @fnvlist_add_string(i32* %84, i32 %85, i8* %86)
  br label %88

88:                                               ; preds = %83, %78
  %89 = load i32*, i32** %4, align 8
  %90 = load i32, i32* @ZPOOL_HIST_DSID, align 4
  %91 = call i64 @nvlist_lookup_uint64(i32* %89, i32 %90, i32* %6)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load i32*, i32** %5, align 8
  %95 = load i32, i32* @ZFS_EV_HIST_DSID, align 4
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @fnvlist_add_uint64(i32* %94, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %93, %88
  %99 = load i32*, i32** %4, align 8
  %100 = load i32, i32* @ZPOOL_HIST_TXG, align 4
  %101 = call i64 @nvlist_lookup_uint64(i32* %99, i32 %100, i32* %6)
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load i32*, i32** %5, align 8
  %105 = load i32, i32* @ZFS_EV_HIST_TXG, align 4
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @fnvlist_add_uint64(i32* %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %103, %98
  %109 = load i32*, i32** %4, align 8
  %110 = load i32, i32* @ZPOOL_HIST_TIME, align 4
  %111 = call i64 @nvlist_lookup_uint64(i32* %109, i32 %110, i32* %6)
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = load i32*, i32** %5, align 8
  %115 = load i32, i32* @ZFS_EV_HIST_TIME, align 4
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @fnvlist_add_uint64(i32* %114, i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %113, %108
  %119 = load i32*, i32** %4, align 8
  %120 = load i32, i32* @ZPOOL_HIST_WHO, align 4
  %121 = call i64 @nvlist_lookup_uint64(i32* %119, i32 %120, i32* %6)
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = load i32*, i32** %5, align 8
  %125 = load i32, i32* @ZFS_EV_HIST_WHO, align 4
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @fnvlist_add_uint64(i32* %124, i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %123, %118
  %129 = load i32*, i32** %4, align 8
  %130 = load i32, i32* @ZPOOL_HIST_INT_EVENT, align 4
  %131 = call i64 @nvlist_lookup_uint64(i32* %129, i32 %130, i32* %6)
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load i32*, i32** %5, align 8
  %135 = load i32, i32* @ZFS_EV_HIST_INT_EVENT, align 4
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @fnvlist_add_uint64(i32* %134, i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %133, %128
  %139 = load i32*, i32** %3, align 8
  %140 = load i32*, i32** %5, align 8
  %141 = load i32, i32* @ESC_ZFS_HISTORY_EVENT, align 4
  %142 = call i32 @spa_event_notify(i32* %139, i32* null, i32* %140, i32 %141)
  %143 = load i32*, i32** %5, align 8
  %144 = call i32 @nvlist_free(i32* %143)
  ret void
}

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #1

declare dso_local i32 @fnvlist_add_string(i32*, i32, i8*) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i32*) #1

declare dso_local i32 @fnvlist_add_uint64(i32*, i32, i32) #1

declare dso_local i32 @spa_event_notify(i32*, i32*, i32*, i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
