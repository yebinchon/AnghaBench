; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_xml.c_svn_ra_serf__add_close_tag_buckets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_xml.c_svn_ra_serf__add_close_tag_buckets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"</\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c">\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svn_ra_serf__add_close_tag_buckets(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i32* @SERF_BUCKET_SIMPLE_STRING_LEN(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2, i32* %8)
  store i32* %9, i32** %7, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call i32 @serf_bucket_aggregate_append(i32* %10, i32* %11)
  %13 = load i8*, i8** %6, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32* @SERF_BUCKET_SIMPLE_STRING(i8* %13, i32* %14)
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @serf_bucket_aggregate_append(i32* %16, i32* %17)
  %19 = load i32*, i32** %5, align 8
  %20 = call i32* @SERF_BUCKET_SIMPLE_STRING_LEN(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1, i32* %19)
  store i32* %20, i32** %7, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @serf_bucket_aggregate_append(i32* %21, i32* %22)
  ret void
}

declare dso_local i32* @SERF_BUCKET_SIMPLE_STRING_LEN(i8*, i32, i32*) #1

declare dso_local i32 @serf_bucket_aggregate_append(i32*, i32*) #1

declare dso_local i32* @SERF_BUCKET_SIMPLE_STRING(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
