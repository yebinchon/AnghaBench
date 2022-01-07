; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_program.c___archive_write_program_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_program.c___archive_write_program_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write_filter = type { i32, i32 }
%struct.archive_write_program_data = type { i64, i32, i32, i32, i64, i64, i64 }

@F_SETFL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EPIPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Error reading from program: %s\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@EIO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Error closing program: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__archive_write_program_close(%struct.archive_write_filter* %0, %struct.archive_write_program_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_write_filter*, align 8
  %5 = alloca %struct.archive_write_program_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.archive_write_filter* %0, %struct.archive_write_filter** %4, align 8
  store %struct.archive_write_program_data* %1, %struct.archive_write_program_data** %5, align 8
  %10 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %5, align 8
  %11 = getelementptr inbounds %struct.archive_write_program_data, %struct.archive_write_program_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.archive_write_filter*, %struct.archive_write_filter** %4, align 8
  %16 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @__archive_write_close_filter(i32 %17)
  store i32 %18, i32* %3, align 4
  br label %173

19:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %20 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %5, align 8
  %21 = getelementptr inbounds %struct.archive_write_program_data, %struct.archive_write_program_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @close(i32 %22)
  %24 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %5, align 8
  %25 = getelementptr inbounds %struct.archive_write_program_data, %struct.archive_write_program_data* %24, i32 0, i32 1
  store i32 -1, i32* %25, align 8
  %26 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %5, align 8
  %27 = getelementptr inbounds %struct.archive_write_program_data, %struct.archive_write_program_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @F_SETFL, align 4
  %30 = call i32 @fcntl(i32 %28, i32 %29, i32 0)
  br label %31

31:                                               ; preds = %106, %19
  br label %32

32:                                               ; preds = %58, %31
  %33 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %5, align 8
  %34 = getelementptr inbounds %struct.archive_write_program_data, %struct.archive_write_program_data* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %5, align 8
  %37 = getelementptr inbounds %struct.archive_write_program_data, %struct.archive_write_program_data* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %5, align 8
  %40 = getelementptr inbounds %struct.archive_write_program_data, %struct.archive_write_program_data* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  %43 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %5, align 8
  %44 = getelementptr inbounds %struct.archive_write_program_data, %struct.archive_write_program_data* %43, i32 0, i32 6
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %5, align 8
  %47 = getelementptr inbounds %struct.archive_write_program_data, %struct.archive_write_program_data* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %45, %48
  %50 = call i32 @read(i32 %35, i64 %42, i64 %49)
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %32
  %52 = load i32, i32* %9, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i64, i64* @errno, align 8
  %56 = load i64, i64* @EINTR, align 8
  %57 = icmp eq i64 %55, %56
  br label %58

58:                                               ; preds = %54, %51
  %59 = phi i1 [ false, %51 ], [ %57, %54 ]
  br i1 %59, label %32, label %60

60:                                               ; preds = %58
  %61 = load i32, i32* %9, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %9, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i64, i64* @errno, align 8
  %68 = load i64, i64* @EPIPE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66, %60
  br label %109

71:                                               ; preds = %66, %63
  %72 = load i32, i32* %9, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %84

74:                                               ; preds = %71
  %75 = load %struct.archive_write_filter*, %struct.archive_write_filter** %4, align 8
  %76 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i64, i64* @errno, align 8
  %79 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %5, align 8
  %80 = getelementptr inbounds %struct.archive_write_program_data, %struct.archive_write_program_data* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @archive_set_error(i32 %77, i64 %78, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %83, i32* %6, align 4
  br label %110

84:                                               ; preds = %71
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %5, align 8
  %88 = getelementptr inbounds %struct.archive_write_program_data, %struct.archive_write_program_data* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, %86
  store i64 %90, i64* %88, align 8
  %91 = load %struct.archive_write_filter*, %struct.archive_write_filter** %4, align 8
  %92 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %5, align 8
  %95 = getelementptr inbounds %struct.archive_write_program_data, %struct.archive_write_program_data* %94, i32 0, i32 5
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %5, align 8
  %98 = getelementptr inbounds %struct.archive_write_program_data, %struct.archive_write_program_data* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @__archive_write_filter(i32 %93, i64 %96, i64 %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @ARCHIVE_OK, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %84
  %105 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %105, i32* %6, align 4
  br label %110

106:                                              ; preds = %84
  %107 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %5, align 8
  %108 = getelementptr inbounds %struct.archive_write_program_data, %struct.archive_write_program_data* %107, i32 0, i32 4
  store i64 0, i64* %108, align 8
  br label %31

109:                                              ; preds = %70
  br label %110

110:                                              ; preds = %109, %104, %74
  %111 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %5, align 8
  %112 = getelementptr inbounds %struct.archive_write_program_data, %struct.archive_write_program_data* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, -1
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %5, align 8
  %117 = getelementptr inbounds %struct.archive_write_program_data, %struct.archive_write_program_data* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @close(i32 %118)
  br label %120

120:                                              ; preds = %115, %110
  %121 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %5, align 8
  %122 = getelementptr inbounds %struct.archive_write_program_data, %struct.archive_write_program_data* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, -1
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %5, align 8
  %127 = getelementptr inbounds %struct.archive_write_program_data, %struct.archive_write_program_data* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @close(i32 %128)
  br label %130

130:                                              ; preds = %125, %120
  br label %131

131:                                              ; preds = %143, %130
  %132 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %5, align 8
  %133 = getelementptr inbounds %struct.archive_write_program_data, %struct.archive_write_program_data* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @waitpid(i64 %134, i32* %8, i32 0)
  %136 = icmp eq i32 %135, -1
  br i1 %136, label %137, label %141

137:                                              ; preds = %131
  %138 = load i64, i64* @errno, align 8
  %139 = load i64, i64* @EINTR, align 8
  %140 = icmp eq i64 %138, %139
  br label %141

141:                                              ; preds = %137, %131
  %142 = phi i1 [ false, %131 ], [ %140, %137 ]
  br i1 %142, label %143, label %144

143:                                              ; preds = %141
  br label %131

144:                                              ; preds = %141
  %145 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %5, align 8
  %146 = getelementptr inbounds %struct.archive_write_program_data, %struct.archive_write_program_data* %145, i32 0, i32 0
  store i64 0, i64* %146, align 8
  %147 = load i32, i32* %8, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %159

149:                                              ; preds = %144
  %150 = load %struct.archive_write_filter*, %struct.archive_write_filter** %4, align 8
  %151 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i64, i64* @EIO, align 8
  %154 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %5, align 8
  %155 = getelementptr inbounds %struct.archive_write_program_data, %struct.archive_write_program_data* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @archive_set_error(i32 %152, i64 %153, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %156)
  %158 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %158, i32* %6, align 4
  br label %159

159:                                              ; preds = %149, %144
  %160 = load %struct.archive_write_filter*, %struct.archive_write_filter** %4, align 8
  %161 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @__archive_write_close_filter(i32 %162)
  store i32 %163, i32* %7, align 4
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* %6, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %159
  %168 = load i32, i32* %7, align 4
  br label %171

169:                                              ; preds = %159
  %170 = load i32, i32* %6, align 4
  br label %171

171:                                              ; preds = %169, %167
  %172 = phi i32 [ %168, %167 ], [ %170, %169 ]
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %171, %14
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local i32 @__archive_write_close_filter(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @read(i32, i64, i64) #1

declare dso_local i32 @archive_set_error(i32, i64, i8*, i32) #1

declare dso_local i32 @__archive_write_filter(i32, i64, i64) #1

declare dso_local i32 @waitpid(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
