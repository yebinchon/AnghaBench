; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_program.c_child_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_program.c_child_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write_filter = type { i32 }
%struct.archive_write_program_data = type { i32, i32, i64, i64, i64 }

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@F_SETFL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i64 0, align 8
@EPIPE = common dso_local global i64 0, align 8
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write_filter*, %struct.archive_write_program_data*, i8*, i64)* @child_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @child_write(%struct.archive_write_filter* %0, %struct.archive_write_program_data* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_write_filter*, align 8
  %7 = alloca %struct.archive_write_program_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.archive_write_filter* %0, %struct.archive_write_filter** %6, align 8
  store %struct.archive_write_program_data* %1, %struct.archive_write_program_data** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %7, align 8
  %12 = getelementptr inbounds %struct.archive_write_program_data, %struct.archive_write_program_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %178

16:                                               ; preds = %4
  %17 = load i64, i64* %9, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 -1, i32* %5, align 4
  br label %178

20:                                               ; preds = %16
  br label %21

21:                                               ; preds = %175, %142, %123, %71, %20
  br label %22

22:                                               ; preds = %36, %21
  %23 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %7, align 8
  %24 = getelementptr inbounds %struct.archive_write_program_data, %struct.archive_write_program_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @write(i32 %25, i8* %26, i64 %27)
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %22
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i64, i64* @errno, align 8
  %34 = load i64, i64* @EINTR, align 8
  %35 = icmp eq i64 %33, %34
  br label %36

36:                                               ; preds = %32, %29
  %37 = phi i1 [ false, %29 ], [ %35, %32 ]
  br i1 %37, label %22, label %38

38:                                               ; preds = %36
  %39 = load i32, i32* %10, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %5, align 4
  br label %178

43:                                               ; preds = %38
  %44 = load i32, i32* %10, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  %47 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %7, align 8
  %48 = getelementptr inbounds %struct.archive_write_program_data, %struct.archive_write_program_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @close(i32 %49)
  %51 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %7, align 8
  %52 = getelementptr inbounds %struct.archive_write_program_data, %struct.archive_write_program_data* %51, i32 0, i32 0
  store i32 -1, i32* %52, align 8
  %53 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %7, align 8
  %54 = getelementptr inbounds %struct.archive_write_program_data, %struct.archive_write_program_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @F_SETFL, align 4
  %57 = call i32 @fcntl(i32 %55, i32 %56, i32 0)
  store i32 0, i32* %5, align 4
  br label %178

58:                                               ; preds = %43
  %59 = load i32, i32* %10, align 4
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i64, i64* @errno, align 8
  %63 = load i64, i64* @EAGAIN, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i32 -1, i32* %5, align 4
  br label %178

66:                                               ; preds = %61, %58
  %67 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %7, align 8
  %68 = getelementptr inbounds %struct.archive_write_program_data, %struct.archive_write_program_data* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %84

71:                                               ; preds = %66
  %72 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %7, align 8
  %73 = getelementptr inbounds %struct.archive_write_program_data, %struct.archive_write_program_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @F_SETFL, align 4
  %76 = call i32 @fcntl(i32 %74, i32 %75, i32 0)
  %77 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %7, align 8
  %78 = getelementptr inbounds %struct.archive_write_program_data, %struct.archive_write_program_data* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %7, align 8
  %81 = getelementptr inbounds %struct.archive_write_program_data, %struct.archive_write_program_data* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @__archive_check_child(i32 %79, i32 %82)
  br label %21

84:                                               ; preds = %66
  br label %85

85:                                               ; preds = %111, %84
  %86 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %7, align 8
  %87 = getelementptr inbounds %struct.archive_write_program_data, %struct.archive_write_program_data* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %7, align 8
  %90 = getelementptr inbounds %struct.archive_write_program_data, %struct.archive_write_program_data* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %7, align 8
  %93 = getelementptr inbounds %struct.archive_write_program_data, %struct.archive_write_program_data* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %91, %94
  %96 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %7, align 8
  %97 = getelementptr inbounds %struct.archive_write_program_data, %struct.archive_write_program_data* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %7, align 8
  %100 = getelementptr inbounds %struct.archive_write_program_data, %struct.archive_write_program_data* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = sub nsw i64 %98, %101
  %103 = call i32 @read(i32 %88, i64 %95, i64 %102)
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %85
  %105 = load i32, i32* %10, align 4
  %106 = icmp eq i32 %105, -1
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load i64, i64* @errno, align 8
  %109 = load i64, i64* @EINTR, align 8
  %110 = icmp eq i64 %108, %109
  br label %111

111:                                              ; preds = %107, %104
  %112 = phi i1 [ false, %104 ], [ %110, %107 ]
  br i1 %112, label %85, label %113

113:                                              ; preds = %111
  %114 = load i32, i32* %10, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %123, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %10, align 4
  %118 = icmp eq i32 %117, -1
  br i1 %118, label %119, label %135

119:                                              ; preds = %116
  %120 = load i64, i64* @errno, align 8
  %121 = load i64, i64* @EPIPE, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %135

123:                                              ; preds = %119, %113
  %124 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %7, align 8
  %125 = getelementptr inbounds %struct.archive_write_program_data, %struct.archive_write_program_data* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @close(i32 %126)
  %128 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %7, align 8
  %129 = getelementptr inbounds %struct.archive_write_program_data, %struct.archive_write_program_data* %128, i32 0, i32 1
  store i32 -1, i32* %129, align 4
  %130 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %7, align 8
  %131 = getelementptr inbounds %struct.archive_write_program_data, %struct.archive_write_program_data* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @F_SETFL, align 4
  %134 = call i32 @fcntl(i32 %132, i32 %133, i32 0)
  br label %21

135:                                              ; preds = %119, %116
  %136 = load i32, i32* %10, align 4
  %137 = icmp eq i32 %136, -1
  br i1 %137, label %138, label %150

138:                                              ; preds = %135
  %139 = load i64, i64* @errno, align 8
  %140 = load i64, i64* @EAGAIN, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %150

142:                                              ; preds = %138
  %143 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %7, align 8
  %144 = getelementptr inbounds %struct.archive_write_program_data, %struct.archive_write_program_data* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %7, align 8
  %147 = getelementptr inbounds %struct.archive_write_program_data, %struct.archive_write_program_data* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @__archive_check_child(i32 %145, i32 %148)
  br label %21

150:                                              ; preds = %138, %135
  %151 = load i32, i32* %10, align 4
  %152 = icmp eq i32 %151, -1
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  store i32 -1, i32* %5, align 4
  br label %178

154:                                              ; preds = %150
  %155 = load i32, i32* %10, align 4
  %156 = sext i32 %155 to i64
  %157 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %7, align 8
  %158 = getelementptr inbounds %struct.archive_write_program_data, %struct.archive_write_program_data* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = add nsw i64 %159, %156
  store i64 %160, i64* %158, align 8
  %161 = load %struct.archive_write_filter*, %struct.archive_write_filter** %6, align 8
  %162 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %7, align 8
  %165 = getelementptr inbounds %struct.archive_write_program_data, %struct.archive_write_program_data* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %7, align 8
  %168 = getelementptr inbounds %struct.archive_write_program_data, %struct.archive_write_program_data* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @__archive_write_filter(i32 %163, i64 %166, i64 %169)
  store i32 %170, i32* %10, align 4
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* @ARCHIVE_OK, align 4
  %173 = icmp ne i32 %171, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %154
  store i32 -1, i32* %5, align 4
  br label %178

175:                                              ; preds = %154
  %176 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %7, align 8
  %177 = getelementptr inbounds %struct.archive_write_program_data, %struct.archive_write_program_data* %176, i32 0, i32 2
  store i64 0, i64* %177, align 8
  br label %21

178:                                              ; preds = %174, %153, %65, %46, %41, %19, %15
  %179 = load i32, i32* %5, align 4
  ret i32 %179
}

declare dso_local i32 @write(i32, i8*, i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @__archive_check_child(i32, i32) #1

declare dso_local i32 @read(i32, i64, i64) #1

declare dso_local i32 @__archive_write_filter(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
