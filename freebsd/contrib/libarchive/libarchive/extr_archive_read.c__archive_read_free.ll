; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c__archive_read_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c__archive_read_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_read = type { i32 (%struct.archive_read_passphrase*)*, %struct.TYPE_9__, %struct.TYPE_11__, i32, %struct.archive_read*, %struct.archive_read*, %struct.TYPE_8__, %struct.TYPE_10__*, %struct.TYPE_7__*, %struct.TYPE_7__* }
%struct.archive_read_passphrase = type { {}*, %struct.TYPE_9__, %struct.TYPE_11__, i32, %struct.archive_read_passphrase*, %struct.archive_read_passphrase*, %struct.TYPE_8__, %struct.TYPE_10__*, %struct.TYPE_7__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { %struct.archive_read_passphrase* }
%struct.TYPE_11__ = type { i32, i64, i32 }
%struct.TYPE_8__ = type { %struct.archive_read_passphrase* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_10__*)* }
%struct.TYPE_7__ = type { {}* }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_READ_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_ANY = common dso_local global i32 0, align 4
@ARCHIVE_STATE_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"archive_read_free\00", align 1
@ARCHIVE_STATE_CLOSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*)* @_archive_read_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_archive_read_free(%struct.archive* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct.archive_read_passphrase*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.archive_read_passphrase*, align 8
  store %struct.archive* %0, %struct.archive** %3, align 8
  %12 = load %struct.archive*, %struct.archive** %3, align 8
  %13 = bitcast %struct.archive* %12 to %struct.archive_read*
  store %struct.archive_read* %13, %struct.archive_read** %4, align 8
  %14 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.archive*, %struct.archive** %3, align 8
  %16 = icmp eq %struct.archive* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %18, i32* %2, align 4
  br label %191

19:                                               ; preds = %1
  %20 = load %struct.archive*, %struct.archive** %3, align 8
  %21 = load i32, i32* @ARCHIVE_READ_MAGIC, align 4
  %22 = load i32, i32* @ARCHIVE_STATE_ANY, align 4
  %23 = load i32, i32* @ARCHIVE_STATE_FATAL, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @archive_check_magic(%struct.archive* %20, i32 %21, i32 %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %27 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @ARCHIVE_STATE_CLOSED, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %19
  %33 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %34 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @ARCHIVE_STATE_FATAL, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %41 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %40, i32 0, i32 2
  %42 = call i32 @archive_read_close(%struct.TYPE_11__* %41)
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %39, %32, %19
  %44 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %45 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %44, i32 0, i32 0
  %46 = load i32 (%struct.archive_read_passphrase*)*, i32 (%struct.archive_read_passphrase*)** %45, align 8
  %47 = icmp ne i32 (%struct.archive_read_passphrase*)* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %50 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %49, i32 0, i32 0
  %51 = load i32 (%struct.archive_read_passphrase*)*, i32 (%struct.archive_read_passphrase*)** %50, align 8
  %52 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %53 = bitcast %struct.archive_read* %52 to %struct.archive_read_passphrase*
  %54 = call i32 %51(%struct.archive_read_passphrase* %53)
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %48, %43
  store i32 1, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %93, %55
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %96

60:                                               ; preds = %56
  %61 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %62 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %61, i32 0, i32 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i64 %65
  %67 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %68 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %67, i32 0, i32 9
  store %struct.TYPE_7__* %66, %struct.TYPE_7__** %68, align 8
  %69 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %70 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %69, i32 0, i32 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = bitcast {}** %75 to i32 (%struct.archive_read_passphrase*)**
  %77 = load i32 (%struct.archive_read_passphrase*)*, i32 (%struct.archive_read_passphrase*)** %76, align 8
  %78 = icmp ne i32 (%struct.archive_read_passphrase*)* %77, null
  br i1 %78, label %79, label %92

79:                                               ; preds = %60
  %80 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %81 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %80, i32 0, i32 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = bitcast {}** %86 to i32 (%struct.archive_read_passphrase*)**
  %88 = load i32 (%struct.archive_read_passphrase*)*, i32 (%struct.archive_read_passphrase*)** %87, align 8
  %89 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %90 = bitcast %struct.archive_read* %89 to %struct.archive_read_passphrase*
  %91 = call i32 %88(%struct.archive_read_passphrase* %90)
  br label %92

92:                                               ; preds = %79, %60
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  br label %56

96:                                               ; preds = %56
  %97 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %98 = bitcast %struct.archive_read* %97 to %struct.archive_read_passphrase*
  %99 = call i32 @__archive_read_free_filters(%struct.archive_read_passphrase* %98)
  store i32 1, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %137, %96
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %140

104:                                              ; preds = %100
  %105 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %106 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %105, i32 0, i32 7
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %111, align 8
  %113 = icmp ne i32 (%struct.TYPE_10__*)* %112, null
  br i1 %113, label %114, label %136

114:                                              ; preds = %104
  %115 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %116 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %115, i32 0, i32 7
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %121, align 8
  %123 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %124 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %123, i32 0, i32 7
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i64 %127
  %129 = call i32 %122(%struct.TYPE_10__* %128)
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %9, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %114
  %134 = load i32, i32* %10, align 4
  store i32 %134, i32* %9, align 4
  br label %135

135:                                              ; preds = %133, %114
  br label %136

136:                                              ; preds = %135, %104
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %6, align 4
  br label %100

140:                                              ; preds = %100
  %141 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %142 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %141, i32 0, i32 6
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load %struct.archive_read_passphrase*, %struct.archive_read_passphrase** %143, align 8
  store %struct.archive_read_passphrase* %144, %struct.archive_read_passphrase** %5, align 8
  br label %145

145:                                              ; preds = %148, %140
  %146 = load %struct.archive_read_passphrase*, %struct.archive_read_passphrase** %5, align 8
  %147 = icmp ne %struct.archive_read_passphrase* %146, null
  br i1 %147, label %148, label %167

148:                                              ; preds = %145
  %149 = load %struct.archive_read_passphrase*, %struct.archive_read_passphrase** %5, align 8
  %150 = getelementptr inbounds %struct.archive_read_passphrase, %struct.archive_read_passphrase* %149, i32 0, i32 5
  %151 = load %struct.archive_read_passphrase*, %struct.archive_read_passphrase** %150, align 8
  store %struct.archive_read_passphrase* %151, %struct.archive_read_passphrase** %11, align 8
  %152 = load %struct.archive_read_passphrase*, %struct.archive_read_passphrase** %5, align 8
  %153 = getelementptr inbounds %struct.archive_read_passphrase, %struct.archive_read_passphrase* %152, i32 0, i32 4
  %154 = load %struct.archive_read_passphrase*, %struct.archive_read_passphrase** %153, align 8
  %155 = load %struct.archive_read_passphrase*, %struct.archive_read_passphrase** %5, align 8
  %156 = getelementptr inbounds %struct.archive_read_passphrase, %struct.archive_read_passphrase* %155, i32 0, i32 4
  %157 = load %struct.archive_read_passphrase*, %struct.archive_read_passphrase** %156, align 8
  %158 = call i32 @strlen(%struct.archive_read_passphrase* %157)
  %159 = call i32 @memset(%struct.archive_read_passphrase* %154, i32 0, i32 %158)
  %160 = load %struct.archive_read_passphrase*, %struct.archive_read_passphrase** %5, align 8
  %161 = getelementptr inbounds %struct.archive_read_passphrase, %struct.archive_read_passphrase* %160, i32 0, i32 4
  %162 = load %struct.archive_read_passphrase*, %struct.archive_read_passphrase** %161, align 8
  %163 = call i32 @free(%struct.archive_read_passphrase* %162)
  %164 = load %struct.archive_read_passphrase*, %struct.archive_read_passphrase** %5, align 8
  %165 = call i32 @free(%struct.archive_read_passphrase* %164)
  %166 = load %struct.archive_read_passphrase*, %struct.archive_read_passphrase** %11, align 8
  store %struct.archive_read_passphrase* %166, %struct.archive_read_passphrase** %5, align 8
  br label %145

167:                                              ; preds = %145
  %168 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %169 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 2
  %171 = call i32 @archive_string_free(i32* %170)
  %172 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %173 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @archive_entry_free(i32 %174)
  %176 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %177 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 1
  store i64 0, i64* %178, align 8
  %179 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %180 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %179, i32 0, i32 2
  %181 = call i32 @__archive_clean(%struct.TYPE_11__* %180)
  %182 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %183 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 0
  %185 = load %struct.archive_read_passphrase*, %struct.archive_read_passphrase** %184, align 8
  %186 = call i32 @free(%struct.archive_read_passphrase* %185)
  %187 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %188 = bitcast %struct.archive_read* %187 to %struct.archive_read_passphrase*
  %189 = call i32 @free(%struct.archive_read_passphrase* %188)
  %190 = load i32, i32* %9, align 4
  store i32 %190, i32* %2, align 4
  br label %191

191:                                              ; preds = %167, %17
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

declare dso_local i32 @archive_read_close(%struct.TYPE_11__*) #1

declare dso_local i32 @__archive_read_free_filters(%struct.archive_read_passphrase*) #1

declare dso_local i32 @memset(%struct.archive_read_passphrase*, i32, i32) #1

declare dso_local i32 @strlen(%struct.archive_read_passphrase*) #1

declare dso_local i32 @free(%struct.archive_read_passphrase*) #1

declare dso_local i32 @archive_string_free(i32*) #1

declare dso_local i32 @archive_entry_free(i32) #1

declare dso_local i32 @__archive_clean(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
