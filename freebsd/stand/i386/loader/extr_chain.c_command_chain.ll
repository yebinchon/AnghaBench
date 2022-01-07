; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/loader/extr_chain.c_command_chain.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/loader/extr_chain.c_command_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i32, i32, i32)* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.stat = type { i32 }
%struct.i386_devdesc = type { i32 }

@SECTOR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"no device or file name specified\00", align 1
@command_errmsg = common dso_local global i8* null, align 8
@CMD_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"invalid trailing arguments\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"open failed\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"stat failed\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"disk\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"can only use disk device\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"can't determine root device\00", align 1
@archsw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [20 x i8] c"failed to read disk\00", align 1
@DOSMAGICOFFSET = common dso_local global i32 0, align 4
@DOSMAGIC = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [12 x i8] c"wrong magic\00", align 1
@relocater_data = common dso_local global %struct.TYPE_3__* null, align 8
@relocator_edx = common dso_local global i32 0, align 4
@relocater_size = common dso_local global i32 0, align 4
@relocator_esi = common dso_local global i32 0, align 4
@relocator_ds = common dso_local global i64 0, align 8
@relocator_es = common dso_local global i64 0, align 8
@relocator_fs = common dso_local global i64 0, align 8
@relocator_gs = common dso_local global i64 0, align 8
@relocator_ss = common dso_local global i64 0, align 8
@relocator_cs = common dso_local global i64 0, align 8
@relocator_sp = common dso_local global i32 0, align 4
@relocator_ip = common dso_local global i32 0, align 4
@relocator_a20_enabled = common dso_local global i64 0, align 8
@relocater = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"exec returned\00", align 1
@VE_MUST = common dso_local global i32 0, align 4
@command_errbuf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @command_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @command_chain(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.stat, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.i386_devdesc*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* @SECTOR_SIZE, align 4
  store i32 %12, i32* %8, align 4
  store i32 1048576, i32* %10, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8** @command_errmsg, align 8
  %16 = load i32, i32* @CMD_ERROR, align 4
  store i32 %16, i32* %3, align 4
  br label %139

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 2
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8** @command_errmsg, align 8
  %21 = load i32, i32* @CMD_ERROR, align 4
  store i32 %21, i32* %3, align 4
  br label %139

22:                                               ; preds = %17
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = load i8*, i8** %24, align 8
  %26 = load i32, i32* @O_RDONLY, align 4
  %27 = call i32 @open(i8* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** @command_errmsg, align 8
  %31 = load i32, i32* @CMD_ERROR, align 4
  store i32 %31, i32* %3, align 4
  br label %139

32:                                               ; preds = %22
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @strlen(i8* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  %39 = load i8*, i8** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 58
  br i1 %46, label %47, label %58

47:                                               ; preds = %32
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @fstat(i32 %48, %struct.stat* %9)
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** @command_errmsg, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @close(i32 %52)
  %54 = load i32, i32* @CMD_ERROR, align 4
  store i32 %54, i32* %3, align 4
  br label %139

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %8, align 4
  br label %69

58:                                               ; preds = %32
  %59 = load i8**, i8*** %5, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 1
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @strncmp(i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8** @command_errmsg, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @close(i32 %65)
  %67 = load i32, i32* @CMD_ERROR, align 4
  store i32 %67, i32* %3, align 4
  br label %139

68:                                               ; preds = %58
  br label %69

69:                                               ; preds = %68, %55
  %70 = bitcast %struct.i386_devdesc** %11 to i8**
  %71 = load i8**, i8*** %5, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 1
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @i386_getdev(i8** %70, i8* %73, i32* null)
  %75 = load %struct.i386_devdesc*, %struct.i386_devdesc** %11, align 8
  %76 = icmp eq %struct.i386_devdesc* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %69
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8** @command_errmsg, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @close(i32 %78)
  %80 = load i32, i32* @CMD_ERROR, align 4
  store i32 %80, i32* %3, align 4
  br label %139

81:                                               ; preds = %69
  %82 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @archsw, i32 0, i32 0), align 8
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 %82(i32 %83, i32 %84, i32 %85)
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %81
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8** @command_errmsg, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @close(i32 %90)
  %92 = load i32, i32* @CMD_ERROR, align 4
  store i32 %92, i32* %3, align 4
  br label %139

93:                                               ; preds = %81
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @close(i32 %94)
  %96 = load i8**, i8*** %5, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 1
  %98 = load i8*, i8** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sub nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %98, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 58
  br i1 %105, label %106, label %117

106:                                              ; preds = %93
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @DOSMAGICOFFSET, align 4
  %109 = add nsw i32 %107, %108
  %110 = call i64 @PTOV(i32 %109)
  %111 = inttoptr i64 %110 to i64*
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @DOSMAGIC, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %106
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8** @command_errmsg, align 8
  %116 = load i32, i32* @CMD_ERROR, align 4
  store i32 %116, i32* %3, align 4
  br label %139

117:                                              ; preds = %106, %93
  %118 = load i32, i32* %10, align 4
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** @relocater_data, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i64 0
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  store i32 %118, i32* %121, align 4
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** @relocater_data, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i64 0
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  store i32 31744, i32* %124, align 4
  %125 = load i32, i32* %8, align 4
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** @relocater_data, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i64 0
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 2
  store i32 %125, i32* %128, align 4
  %129 = load %struct.i386_devdesc*, %struct.i386_devdesc** %11, align 8
  %130 = call i32 @bd_unit2bios(%struct.i386_devdesc* %129)
  store i32 %130, i32* @relocator_edx, align 4
  %131 = load i32, i32* @relocater_size, align 4
  store i32 %131, i32* @relocator_esi, align 4
  store i64 0, i64* @relocator_ds, align 8
  store i64 0, i64* @relocator_es, align 8
  store i64 0, i64* @relocator_fs, align 8
  store i64 0, i64* @relocator_gs, align 8
  store i64 0, i64* @relocator_ss, align 8
  store i64 0, i64* @relocator_cs, align 8
  store i32 31744, i32* @relocator_sp, align 4
  store i32 31744, i32* @relocator_ip, align 4
  store i64 0, i64* @relocator_a20_enabled, align 8
  %132 = load i32, i32* @relocater, align 4
  %133 = load i32, i32* @relocater_size, align 4
  %134 = call i32 @i386_copyin(i32 %132, i32 1536, i32 %133)
  %135 = call i32 (...) @dev_cleanup()
  %136 = call i32 @__exec(i8* inttoptr (i64 1536 to i8*))
  %137 = call i32 @panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %138 = load i32, i32* @CMD_ERROR, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %117, %115, %89, %77, %64, %51, %30, %20, %15
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @i386_getdev(i8**, i8*, i32*) #1

declare dso_local i64 @PTOV(i32) #1

declare dso_local i32 @bd_unit2bios(%struct.i386_devdesc*) #1

declare dso_local i32 @i386_copyin(i32, i32, i32) #1

declare dso_local i32 @dev_cleanup(...) #1

declare dso_local i32 @__exec(i8*) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
