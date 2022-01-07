; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_disk_posix.c_set_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_disk_posix.c_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write_disk = type { i32, i64, i32, i64, i64, i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@TODO_SGID_CHECK = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@ARCHIVE_EXTRACT_OWNER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Can't restore SGID bit\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@TODO_SUID = common dso_local global i32 0, align 4
@S_ISUID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Can't restore SUID bit\00", align 1
@TODO_SUID_CHECK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Can't make file SUID\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Can't set permissions to 0%o\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write_disk*, i32)* @set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_mode(%struct.archive_write_disk* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_write_disk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.archive_write_disk* %0, %struct.archive_write_disk** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = and i32 %9, 4095
  store i32 %10, i32* %5, align 4
  %11 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %12 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @TODO_SGID_CHECK, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %98

17:                                               ; preds = %2
  %18 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %19 = call i32 @lazy_stat(%struct.archive_write_disk* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @ARCHIVE_OK, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %170

24:                                               ; preds = %17
  %25 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %26 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %25, i32 0, i32 9
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %31 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %24
  %35 = load i32, i32* @S_ISGID, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %40 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @ARCHIVE_EXTRACT_OWNER, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %34
  %46 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %47 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %46, i32 0, i32 6
  %48 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %47, i32 -1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %45, %34
  br label %51

51:                                               ; preds = %50, %24
  %52 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %53 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %52, i32 0, i32 9
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %58 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %56, %59
  br i1 %60, label %61, label %85

61:                                               ; preds = %51
  %62 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %63 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @TODO_SUID, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %61
  %69 = load i32, i32* @S_ISUID, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %5, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %5, align 4
  %73 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %74 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @ARCHIVE_EXTRACT_OWNER, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %68
  %80 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %81 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %80, i32 0, i32 6
  %82 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %81, i32 -1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %79, %68
  br label %85

85:                                               ; preds = %84, %61, %51
  %86 = load i32, i32* @TODO_SGID_CHECK, align 4
  %87 = xor i32 %86, -1
  %88 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %89 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = and i32 %90, %87
  store i32 %91, i32* %89, align 8
  %92 = load i32, i32* @TODO_SUID_CHECK, align 4
  %93 = xor i32 %92, -1
  %94 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %95 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = and i32 %96, %93
  store i32 %97, i32* %95, align 8
  br label %138

98:                                               ; preds = %2
  %99 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %100 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @TODO_SUID_CHECK, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %137

105:                                              ; preds = %98
  %106 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %107 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %110 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %108, %111
  br i1 %112, label %113, label %130

113:                                              ; preds = %105
  %114 = load i32, i32* @S_ISUID, align 4
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %5, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %5, align 4
  %118 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %119 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @ARCHIVE_EXTRACT_OWNER, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %113
  %125 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %126 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %125, i32 0, i32 6
  %127 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %126, i32 -1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %128 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %128, i32* %6, align 4
  br label %129

129:                                              ; preds = %124, %113
  br label %130

130:                                              ; preds = %129, %105
  %131 = load i32, i32* @TODO_SUID_CHECK, align 4
  %132 = xor i32 %131, -1
  %133 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %134 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = and i32 %135, %132
  store i32 %136, i32* %134, align 8
  br label %137

137:                                              ; preds = %130, %98
  br label %138

138:                                              ; preds = %137, %85
  %139 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %140 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %139, i32 0, i32 8
  %141 = load i32, i32* %140, align 8
  %142 = call i64 @S_ISLNK(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  br label %168

145:                                              ; preds = %138
  %146 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %147 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %146, i32 0, i32 8
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @S_ISDIR(i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %167, label %151

151:                                              ; preds = %145
  %152 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %153 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %152, i32 0, i32 7
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %5, align 4
  %156 = call i32 @chmod(i32 %154, i32 %155)
  store i32 %156, i32* %7, align 4
  %157 = load i32, i32* %7, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %151
  %160 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %161 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %160, i32 0, i32 6
  %162 = load i32, i32* @errno, align 4
  %163 = load i32, i32* %5, align 4
  %164 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %161, i32 %162, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %165, i32* %6, align 4
  br label %166

166:                                              ; preds = %159, %151
  br label %167

167:                                              ; preds = %166, %145
  br label %168

168:                                              ; preds = %167, %144
  %169 = load i32, i32* %6, align 4
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %168, %22
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i32 @lazy_stat(%struct.archive_write_disk*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*, ...) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @chmod(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
