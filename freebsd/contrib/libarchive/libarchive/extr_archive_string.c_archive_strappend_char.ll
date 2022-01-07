; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_archive_strappend_char.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_archive_strappend_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_string = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.archive_string* @archive_strappend_char(%struct.archive_string* %0, i8 signext %1) #0 {
  %3 = alloca %struct.archive_string*, align 8
  %4 = alloca i8, align 1
  store %struct.archive_string* %0, %struct.archive_string** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load %struct.archive_string*, %struct.archive_string** %3, align 8
  %6 = call %struct.archive_string* @archive_string_append(%struct.archive_string* %5, i8* %4, i32 1)
  store %struct.archive_string* %6, %struct.archive_string** %3, align 8
  %7 = icmp eq %struct.archive_string* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = call i32 @__archive_errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %2
  %11 = load %struct.archive_string*, %struct.archive_string** %3, align 8
  ret %struct.archive_string* %11
}

declare dso_local %struct.archive_string* @archive_string_append(%struct.archive_string*, i8*, i32) #1

declare dso_local i32 @__archive_errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
