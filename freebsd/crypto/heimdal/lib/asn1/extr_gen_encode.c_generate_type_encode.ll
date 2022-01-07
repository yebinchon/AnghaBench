; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_gen_encode.c_generate_type_encode.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_gen_encode.c_generate_type_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@codefile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [136 x i8] c"int ASN1CALL\0Aencode_%s(unsigned char *p HEIMDAL_UNUSED_ATTRIBUTE, size_t len HEIMDAL_UNUSED_ATTRIBUTE, const %s *data, size_t *size)\0A{\0A\00", align 1
@.str.1 = private unnamed_addr constant [138 x i8] c"size_t ret HEIMDAL_UNUSED_ATTRIBUTE = 0;\0Asize_t l HEIMDAL_UNUSED_ATTRIBUTE;\0Aint i HEIMDAL_UNUSED_ATTRIBUTE, e HEIMDAL_UNUSED_ATTRIBUTE;\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"Top\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"*size = ret;\0Areturn 0;\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"}\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generate_type_encode(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %3 = load i32, i32* @codefile, align 4
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = call i32 (i32, i8*, ...) @fprintf(i32 %3, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str, i64 0, i64 0), i8* %6, i8* %9)
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %25 [
    i32 143, label %16
    i32 149, label %16
    i32 140, label %16
    i32 145, label %16
    i32 146, label %16
    i32 133, label %16
    i32 131, label %16
    i32 130, label %16
    i32 139, label %16
    i32 144, label %16
    i32 151, label %16
    i32 129, label %16
    i32 128, label %16
    i32 142, label %16
    i32 150, label %16
    i32 147, label %16
    i32 141, label %16
    i32 138, label %16
    i32 137, label %16
    i32 136, label %16
    i32 135, label %16
    i32 134, label %16
    i32 132, label %16
    i32 148, label %16
  ]

16:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %17 = load i32, i32* @codefile, align 4
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = call i32 @encode_type(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_5__* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %23 = load i32, i32* @codefile, align 4
  %24 = call i32 (i32, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %27

25:                                               ; preds = %1
  %26 = call i32 (...) @abort() #3
  unreachable

27:                                               ; preds = %16
  %28 = load i32, i32* @codefile, align 4
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @encode_type(i8*, %struct.TYPE_5__*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
