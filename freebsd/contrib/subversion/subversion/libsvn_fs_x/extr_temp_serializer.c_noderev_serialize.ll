; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_temp_serializer.c_noderev_serialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_temp_serializer.c_noderev_serialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__**)* @noderev_serialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @noderev_serialize(i32* %0, %struct.TYPE_3__** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__**, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__** %1, %struct.TYPE_3__*** %4, align 8
  %6 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %4, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %5, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %9 = icmp eq %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %38

11:                                               ; preds = %2
  %12 = load i32*, i32** %3, align 8
  %13 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %4, align 8
  %14 = bitcast %struct.TYPE_3__** %13 to i8**
  %15 = call i32 @svn_temp_serializer__push(i32* %12, i8** %14, i32 20)
  %16 = load i32*, i32** %3, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 4
  %19 = call i32 @serialize_representation(i32* %16, i32* %18)
  %20 = load i32*, i32** %3, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  %23 = call i32 @serialize_representation(i32* %20, i32* %22)
  %24 = load i32*, i32** %3, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = call i32 @svn_temp_serializer__add_string(i32* %24, i32* %26)
  %28 = load i32*, i32** %3, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = call i32 @svn_temp_serializer__add_string(i32* %28, i32* %30)
  %32 = load i32*, i32** %3, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = call i32 @svn_temp_serializer__add_string(i32* %32, i32* %34)
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @svn_temp_serializer__pop(i32* %36)
  br label %38

38:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @svn_temp_serializer__push(i32*, i8**, i32) #1

declare dso_local i32 @serialize_representation(i32*, i32*) #1

declare dso_local i32 @svn_temp_serializer__add_string(i32*, i32*) #1

declare dso_local i32 @svn_temp_serializer__pop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
