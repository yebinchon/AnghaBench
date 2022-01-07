; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libauditd/extr_auditd_lib.c_auditd_read_dirs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libauditd/extr_auditd_lib.c_auditd_read_dirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_ent = type { i8, i8, i8* }
%struct.statfs = type { i32, i32 }

@MAXNAMLEN = common dso_local global i32 0, align 4
@auditd_minval = common dso_local global i32 0, align 4
@auditd_hostlen = common dso_local global i32 0, align 4
@AUDIT_HARD_LIMIT_FREE_BLOCKS = common dso_local global i32 0, align 4
@ADE_NOMEM = common dso_local global i32 0, align 4
@ADE_HARDLIM = common dso_local global i32 0, align 4
@ADE_SOFTLIM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auditd_read_dirs(i32 (i8*)* %0, i32 (i8*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32 (i8*)*, align 8
  %5 = alloca i32 (i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.dir_ent*, align 8
  %9 = alloca %struct.statfs, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 (i8*)* %0, i32 (i8*)** %4, align 8
  store i32 (i8*)* %1, i32 (i8*)** %5, align 8
  %17 = load i32, i32* @MAXNAMLEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %6, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %7, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %21 = load i32, i32* @auditd_minval, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = call i32 (...) @auditd_set_minfree()
  store i32 %24, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %136

28:                                               ; preds = %23, %2
  %29 = load i32, i32* @auditd_hostlen, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 (...) @auditd_set_host()
  br label %33

33:                                               ; preds = %31, %28
  %34 = call i32 (...) @free_dir_q()
  %35 = call i32 (...) @endac()
  br label %36

36:                                               ; preds = %113, %43, %33
  %37 = load i32, i32* @MAXNAMLEN, align 4
  %38 = call i64 @getacdir(i8* %20, i32 %37)
  %39 = icmp sge i64 %38, 0
  br i1 %39, label %40, label %123

40:                                               ; preds = %36
  %41 = call i64 @statfs(i8* %20, %struct.statfs* %9)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %36

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.statfs, %struct.statfs* %9, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.statfs, %struct.statfs* %9, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @auditd_minval, align 4
  %50 = mul nsw i32 %48, %49
  %51 = sdiv i32 %50, 100
  %52 = icmp slt i32 %46, %51
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 1, i32 0
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %11, align 1
  %56 = getelementptr inbounds %struct.statfs, %struct.statfs* %9, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @AUDIT_HARD_LIMIT_FREE_BLOCKS, align 4
  %59 = icmp slt i32 %57, %58
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 1, i32 0
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %12, align 1
  %63 = load i8, i8* %11, align 1
  %64 = icmp ne i8 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %44
  %66 = load i32 (i8*)*, i32 (i8*)** %4, align 8
  %67 = icmp ne i32 (i8*)* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32 (i8*)*, i32 (i8*)** %4, align 8
  %70 = call i32 %69(i8* %20)
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i32, i32* %14, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %14, align 4
  br label %74

74:                                               ; preds = %71, %44
  %75 = load i8, i8* %12, align 1
  %76 = icmp ne i8 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  %78 = load i32 (i8*)*, i32 (i8*)** %5, align 8
  %79 = icmp ne i32 (i8*)* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32 (i8*)*, i32 (i8*)** %5, align 8
  %82 = call i32 %81(i8* %20)
  br label %83

83:                                               ; preds = %80, %77
  %84 = load i32, i32* %15, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %15, align 4
  br label %86

86:                                               ; preds = %83, %74
  %87 = call i64 @malloc(i32 16)
  %88 = inttoptr i64 %87 to %struct.dir_ent*
  store %struct.dir_ent* %88, %struct.dir_ent** %8, align 8
  %89 = load %struct.dir_ent*, %struct.dir_ent** %8, align 8
  %90 = icmp eq %struct.dir_ent* %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i32, i32* @ADE_NOMEM, align 4
  store i32 %92, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %136

93:                                               ; preds = %86
  %94 = load i8, i8* %11, align 1
  %95 = load %struct.dir_ent*, %struct.dir_ent** %8, align 8
  %96 = getelementptr inbounds %struct.dir_ent, %struct.dir_ent* %95, i32 0, i32 0
  store i8 %94, i8* %96, align 8
  %97 = load i8, i8* %12, align 1
  %98 = load %struct.dir_ent*, %struct.dir_ent** %8, align 8
  %99 = getelementptr inbounds %struct.dir_ent, %struct.dir_ent* %98, i32 0, i32 1
  store i8 %97, i8* %99, align 1
  %100 = load i32, i32* @MAXNAMLEN, align 4
  %101 = call i64 @malloc(i32 %100)
  %102 = inttoptr i64 %101 to i8*
  %103 = load %struct.dir_ent*, %struct.dir_ent** %8, align 8
  %104 = getelementptr inbounds %struct.dir_ent, %struct.dir_ent* %103, i32 0, i32 2
  store i8* %102, i8** %104, align 8
  %105 = load %struct.dir_ent*, %struct.dir_ent** %8, align 8
  %106 = getelementptr inbounds %struct.dir_ent, %struct.dir_ent* %105, i32 0, i32 2
  %107 = load i8*, i8** %106, align 8
  %108 = icmp eq i8* %107, null
  br i1 %108, label %109, label %113

109:                                              ; preds = %93
  %110 = load %struct.dir_ent*, %struct.dir_ent** %8, align 8
  %111 = call i32 @free(%struct.dir_ent* %110)
  %112 = load i32, i32* @ADE_NOMEM, align 4
  store i32 %112, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %136

113:                                              ; preds = %93
  %114 = load %struct.dir_ent*, %struct.dir_ent** %8, align 8
  %115 = getelementptr inbounds %struct.dir_ent, %struct.dir_ent* %114, i32 0, i32 2
  %116 = load i8*, i8** %115, align 8
  %117 = load i32, i32* @MAXNAMLEN, align 4
  %118 = call i32 @strlcpy(i8* %116, i8* %20, i32 %117)
  %119 = load %struct.dir_ent*, %struct.dir_ent** %8, align 8
  %120 = call i32 @insert_orderly(%struct.dir_ent* %119)
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %13, align 4
  br label %36

123:                                              ; preds = %36
  %124 = load i32, i32* %15, align 4
  %125 = load i32, i32* %13, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = load i32, i32* @ADE_HARDLIM, align 4
  store i32 %128, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %136

129:                                              ; preds = %123
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* %13, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = load i32, i32* @ADE_SOFTLIM, align 4
  store i32 %134, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %136

135:                                              ; preds = %129
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %136

136:                                              ; preds = %135, %133, %127, %109, %91, %26
  %137 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %137)
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @auditd_set_minfree(...) #2

declare dso_local i32 @auditd_set_host(...) #2

declare dso_local i32 @free_dir_q(...) #2

declare dso_local i32 @endac(...) #2

declare dso_local i64 @getacdir(i8*, i32) #2

declare dso_local i64 @statfs(i8*, %struct.statfs*) #2

declare dso_local i64 @malloc(i32) #2

declare dso_local i32 @free(%struct.dir_ent*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @insert_orderly(%struct.dir_ent*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
