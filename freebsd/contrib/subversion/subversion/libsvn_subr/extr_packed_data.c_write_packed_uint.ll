; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_packed_data.c_write_packed_uint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_packed_data.c_write_packed_uint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @write_packed_uint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_packed_uint(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [10 x i8], align 1
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 128
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = trunc i32 %11 to i8
  %13 = call i32 @svn_stringbuf_appendbyte(i32* %10, i8 signext %12)
  br label %27

14:                                               ; preds = %2
  %15 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %16 = load i32, i32* %4, align 4
  %17 = call i8* @write_packed_uint_body(i8* %15, i32 %16)
  store i8* %17, i8** %6, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %22 = ptrtoint i8* %20 to i64
  %23 = ptrtoint i8* %21 to i64
  %24 = sub i64 %22, %23
  %25 = trunc i64 %24 to i32
  %26 = call i32 @svn_stringbuf_appendbytes(i32* %18, i8* %19, i32 %25)
  br label %27

27:                                               ; preds = %14, %9
  ret void
}

declare dso_local i32 @svn_stringbuf_appendbyte(i32*, i8 signext) #1

declare dso_local i8* @write_packed_uint_body(i8*, i32) #1

declare dso_local i32 @svn_stringbuf_appendbytes(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
